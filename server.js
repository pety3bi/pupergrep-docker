(function() {
    var PuperGrep = require("pupergrep"),
        puper     = new PuperGrep(),
        manager   = puper.getLogReaderManager();

    manager.addLog("logs", "/var/log/pupergrep", function(error) {
        if (error) {
            console.log("Error adding test log", error);
            return;
        }

        // if your log may be interpreted as html:
        // manager.setLogType("logs", "html");

        puper.listen(80, "127.0.0.1");
    });
})();
