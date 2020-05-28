import numpy as np
from pwlf import PiecewiseLinFit
import pickle

TIME_PER_DUPLICATE_TUPLE = 0.001142857

def nestloop_index_scan_train(distinctLeftRows, rightPagesScanned, executionTime, outputCard, num_lines, path):

	rowsToPages = PiecewiseLinFit(distinctLeftRows, rightPagesScanned)
	pagesToTime = PiecewiseLinFit(rightPagesScanned, executionTime)
	rowsToTime = PiecewiseLinFit(distinctLeftRows, executionTime)
	rowsToCard = PiecewiseLinFit(distinctLeftRows, outputCard)

	rowsToPages.fit(num_lines)
	pagesToTime.fit(num_lines)
	rowsToTime.fit(num_lines)
	rowsToCard.fit(num_lines)

	with open(path+'rowsToPages.pkl', 'wb') as f:
	    pickle.dump(rowsToPages, f, pickle.HIGHEST_PROTOCOL)
	with open(path+'pagesToTime.pkl', 'wb') as f:
	    pickle.dump(pagesToTime, f, pickle.HIGHEST_PROTOCOL)
	with open(path+'rowsToTime.pkl', 'wb') as f:
	    pickle.dump(rowsToTime, f, pickle.HIGHEST_PROTOCOL)
	with open(path+'rowsToCard.pkl', 'wb') as f:
	    pickle.dump(rowsToCard, f, pickle.HIGHEST_PROTOCOL)


def nestloop_index_scan_predict(distinctLeftRows, outputCard, path):

	with open(path+'rowsToPages.pkl', 'rb') as f:
		rowsToPages = pickle.load(f)
	with open(path+'pagesToTime.pkl', 'rb') as f:
		pagesToTime = pickle.load(f)
	with open(path+'rowsToTime.pkl', 'rb') as f:
		rowsToTime = pickle.load(f)
	with open(path+'rowsToCard.pkl', 'rb') as f:
		rowsToCard = pickle.load(f)

	predictedPages = rowsToPages.predict(distinctLeftRows)
	predictedTimeIndirect = pagesToTime.predict(predictedPages)
	predictedTimeDirect = rowsToTime.predict(distinctLeftRows)
	predictedOutputCard = rowsToCard.predict(distinctLeftRows)

	extraTuples = []
	for i in range(len(outputCard)):
		extraTuples.append(max(outputCard[i] - predictedOutputCard[i],0))

	for i in range(len(predictedTimeIndirect)):
		predictedTimeIndirect[i] += extraTuples[i] * TIME_PER_DUPLICATE_TUPLE
		predictedTimeDirect[i] += extraTuples[i] * TIME_PER_DUPLICATE_TUPLE

	return predictedTimeIndirect, predictedTimeDirect

def parse_input_plans(filename):
	rightPagesScanned = []
	distinctLeftRows = []
	executionTime = []
	outputCard = []

	f = open(filename,'r')

	cntRead = 0
	cntLoops = 0
	cntActual = 0
	cntOutputCard = 2

	for line in f:
		
		if "read=" in line:
			if cntRead == 2:
				rightPagesScanned.append(float(line.split("read=")[1]))
				cntRead = -1
			cntRead += 1

		if "loops=" in line:
			if cntLoops == 2:
				distinctLeftRows.append(float((line.split("loops=")[1]).split(')')[0]))
				cntLoops = -1
			cntLoops += 1

		if "actual" in line:
			if cntActual == 2:
				executionTime.append(float(((line.split("actual time=")[1]).split('..')[1]).split(' ')[0]))
				cntActual = -1
			cntActual += 1

		if "rows=" in line:
			if cntOutputCard == 2:
				outputCard.append(float((line.split("rows=")[2]).split(' ')[0]))
				cntOutputCard = -1
			cntOutputCard += 1

	for i in range(len(executionTime)):
		executionTime[i] = executionTime[i] * distinctLeftRows[i]

	return distinctLeftRows, rightPagesScanned, executionTime, outputCard


if __name__ == "__main__":

	path = 'movie_info/'
	trainingDistinctLeftRows, trainingRightPagesScanned, trainingExecutionTime, trainingOutputCard = parse_input_plans(path + "nest_index_plans.txt")

	num_lines = 3
	nestloop_index_scan_train(trainingDistinctLeftRows, trainingRightPagesScanned, trainingExecutionTime, trainingOutputCard, num_lines, path)
	
	distinctLeftRows = [9545]
	outputCard = [93975]
	print(nestloop_index_scan_predict(distinctLeftRows, outputCard, path))