// Example gscript template
// Title: Multi Platform Write File Example
// Author: ahhh
// Purpose: Testing an asset and write file on different platforms
// Gscript version: 1.0.0
// ATT&CK: 


//priority:150
//timeout:150

function Deploy() {

    console.log("Starting Write file from String");
    var writeStringErrors = G.file.WriteFileFromString("/go/src/github.com/Pascal-0x90/gscript/stdlib/file/file_test4.txt", "Testing some stuff\n");
    console.log("errors: "+ writeStringErrors)

};
