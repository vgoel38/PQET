import numpy as np
from pwlf import PiecewiseLinFit

def index_scan_train(path, numLines):
	numCurves = np.loadtxt(path+'num_curves')
	numCurves = int(numCurves)

	trainingData = []
	attToCard = []
	cardToTime = []

	for i in range(numCurves):
		trainingData.append(np.loadtxt(path+str(i)))
	trainingData = np.array(trainingData)

	for i in range(numCurves):
		attToCard.append(PiecewiseLinFit(np.transpose(trainingData[i])[2],np.transpose(trainingData[i])[0]))
		cardToTime.append(PiecewiseLinFit(np.transpose(trainingData[i])[0],np.transpose(trainingData[i])[1]))

	for i in range(numCurves):
		(attToCard[i]).fit(numLines)
		(cardToTime[i]).fit(numLines)

	return attToCard, cardToTime, numCurves

	
def index_scan_predict(path, attStart, attEnd):

	inflectionPoints = np.loadtxt(path+'inflection_points')
	numLines = 2
	attToCard, cardToTime, numCurves = index_scan_train(path, numLines)

	if len(inflectionPoints) != numCurves + 1:
		print("#inflectionPoints = ", len(inflectionPoints), "#segments = ", numCurves, "mismatch")
		return 0

	print(attStart, attEnd)
	if attStart > attEnd:
		return 0
	if attStart < inflectionPoints[0] and attEnd < inflectionPoints[0]:
		return 0
	if attStart > inflectionPoints[len(inflectionPoints)-1] and attEnd > inflectionPoints[len(inflectionPoints)-1]:
		return 0
	if attStart < inflectionPoints[0]:
		attStart = inflectionPoints[0]
	if attEnd > inflectionPoints[len(inflectionPoints)-1]:
		attEnd = inflectionPoints[len(inflectionPoints)-1]

	executionTimePerSegment = []
	numContributingCurvesPerSegment = []

	for i in range(numCurves):
		executionTimePerSegment.append(0)
		numContributingCurvesPerSegment.append(0)

	startSegment = 0
	endSegment = 0

	for i in range(len(inflectionPoints)):
		if attStart < inflectionPoints[i]:
			startSegment = i-1
			break

	for i in range(len(inflectionPoints)):
		if endSegment < inflectionPoints[i]:
			endSegment = i-1
			break

	for i in range(numCurves):
		if attEnd <= inflectionPoints[i]:
			break
		for j in range(i,len(inflectionPoints)-1):
			tempStart = max(attStart, inflectionPoints[j])
			tempEnd = min(attEnd, inflectionPoints[j+1])
			if tempStart <= tempEnd:
				predictedCardStart = max(attToCard[i].predict(tempStart),0)
				predictedCardEnd = max(attToCard[i].predict(tempEnd),0)
				predictedTimeStart = max(cardToTime[i].predict(predictedCardStart),0)
				predictedTimeEnd = max(cardToTime[i].predict(predictedCardEnd),0)
				predictedTime = max(predictedTimeEnd - predictedTimeStart,0)
				print("tempStart=", tempStart, "tempEnd=", tempEnd, "predictedCardStart=", predictedCardStart, "predictedCardEnd=", predictedCardEnd, "predictedTimeStart = ", predictedTimeStart, "predictedTimeEnd = ", predictedTimeEnd, i, j)
				executionTimePerSegment[j]+=predictedTime
				numContributingCurvesPerSegment[j]+=1

	finalTime = 0
	for i in range(len(executionTimePerSegment)):
		if numContributingCurvesPerSegment[i] != 0:
			finalTime += executionTimePerSegment[i]/numContributingCurvesPerSegment[i]

	finalCard = max(max(attToCard[i].predict(attEnd),0) - max(attToCard[i].predict(attStart),0),0)
	return finalTime[0], finalCard


if __name__ == "__main__":

	path = "cast_info/movie_id/"
	attStart = 0
	attEnd = 10000

	# attToCard, cardToTime = index_scan_train(path, numLines)
	# print(attToCard[0].predict(200000), cardToTime[0].predict(1000005))
	print(index_scan_predict(path, attStart, attEnd))