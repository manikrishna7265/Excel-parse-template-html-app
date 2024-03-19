%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "creationTime": |2024-03-14T21:58:30.158|,
  "recordCount": 10,
  "result": {
    "onCompletePhaseException": null,
    "loadingPhaseException": null,
    "totalRecords": 10,
    "elapsedTimeInMillis": 0,
    "failedOnCompletePhase": false,
    "failedRecords": 0,
    "loadedRecords": 10,
    "failedOnInputPhase": false,
    "successfulRecords": 0,
    "inputPhaseException": null,
    "processedRecords": 0,
    "failedOnLoadingPhase": false,
    "batchJobInstanceId": "e48fffd0-e21f-11ee-866d-26fd52a7726c"
  },
  "id": "e48fffd0-e21f-11ee-866d-26fd52a7726c",
  "ownerJobName": "get-records-from-payload",
  "status": "EXECUTING"
})