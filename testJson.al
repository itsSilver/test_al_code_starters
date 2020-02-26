codeunit 50134 TestJson
{
    trigger OnRun()
    begin
        //Json.Add ads an record on json array
        Json.Add('id', 1234);
        Json.Add('status', 'onProgres');

        // JArray.Add adds the records as a json array 
        JArray.Add(Json);

        // JArray.WriteTo stringifies the array 
        JArray.WriteTo(str);
        Message(str);
    end;

    var
        //References to variables and variable types, pretty self explanatory

        Json: JsonObject;
        JArray: JsonArray;
        str: Text;
}