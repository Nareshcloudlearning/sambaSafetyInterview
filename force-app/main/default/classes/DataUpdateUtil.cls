public class DataUpdateUtil {
	public static void updateRecords(Map<Map<String, String>, List<SObject>> recordMap) {
        try{
			List<SObject> recordsToUpdate = new List<SObject>();
			for (Map<String, String> fieldsMap : recordMap.keySet()) {
				List<SObject> sObjectList = recordMap.get(fieldsMap);
				for (SObject record : sObjectList) {
					for (String fieldName : fieldsMap.keySet()) {
						String fieldValue = fieldsMap.get(fieldName);
						record.put(fieldName, fieldValue);
					}
					
					recordsToUpdate.add(record);
				}
			}
			System.debug('recordsToUpdate =>'+recordsToUpdate);

			if (!recordsToUpdate.isEmpty()) {
				update recordsToUpdate;
			}
		}
		catch(Exception exp){
			System.debug('Exception occured =>'+exp.getMessage());
		}
    }
}