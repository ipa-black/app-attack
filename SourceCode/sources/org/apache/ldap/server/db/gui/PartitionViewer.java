package org.apache.ldap.server.db.gui;

import java.awt.Dimension;
import java.awt.Toolkit;
import javax.naming.NamingException;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.SearchEngine;
/* loaded from: classes3.dex */
public class PartitionViewer {
    private Database db;
    private SearchEngine eng;

    public PartitionViewer(Database database, SearchEngine searchEngine) {
        this.db = database;
        this.eng = searchEngine;
    }

    public void execute() throws NamingException {
        MainFrame mainFrame = new MainFrame(this.db, this.eng);
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        Dimension size = mainFrame.getSize();
        size.height = size.height > screenSize.height ? screenSize.height : size.height;
        size.width = size.width > screenSize.width ? screenSize.width : size.width;
        mainFrame.setLocation((screenSize.width - size.width) / 2, (screenSize.height - size.height) / 2);
        mainFrame.setVisible(true);
        System.out.println(size);
    }
}
