package org.apache.ldap.server.db.gui;

import java.math.BigInteger;
import java.util.ArrayList;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.swing.table.AbstractTableModel;
/* loaded from: classes3.dex */
public class AttributesTableModel extends AbstractTableModel {
    public static final String KEY_COL = "Keys";
    public static final String VAL_COL = "Values";
    static /* synthetic */ Class class$0 = null;
    private static final long serialVersionUID = 3256443603340310841L;
    private final String dn;
    private final Attributes entry;
    private final BigInteger id;
    private boolean isMutable;
    private final transient ArrayList keyList;
    private final transient ArrayList valList;

    public int getColumnCount() {
        return 2;
    }

    public AttributesTableModel(Attributes attributes, BigInteger bigInteger, String str, boolean z) {
        this.dn = str;
        this.id = bigInteger;
        this.entry = attributes;
        this.isMutable = z;
        NamingEnumeration iDs = attributes.getIDs();
        int i = 0;
        while (iDs.hasMoreElements()) {
            i += attributes.get((String) iDs.nextElement()).size();
        }
        this.keyList = new ArrayList(i);
        this.valList = new ArrayList(i);
        NamingEnumeration iDs2 = this.entry.getIDs();
        while (iDs2.hasMoreElements()) {
            Attribute attribute = this.entry.get((String) iDs2.nextElement());
            for (int i2 = 0; i2 < attribute.size(); i2++) {
                try {
                    this.keyList.add(attribute.getID());
                    this.valList.add(attribute.get(i2));
                } catch (NamingException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public String getColumnName(int i) {
        if (i == 0) {
            return KEY_COL;
        }
        if (i == 1) {
            return VAL_COL;
        }
        throw new RuntimeException("There can only be 2 columns at index 0 and at 1");
    }

    public int getRowCount() {
        return this.keyList.size();
    }

    public Class getColumnClass(int i) {
        Class<?> cls = class$0;
        if (cls == null) {
            try {
                cls = Class.forName("java.lang.String");
                class$0 = cls;
            } catch (ClassNotFoundException e2) {
                throw new NoClassDefFoundError(e2.getMessage());
            }
        }
        return cls;
    }

    public boolean isCellEditable(int i, int i2) {
        return this.isMutable;
    }

    public Object getValueAt(int i, int i2) {
        if (i >= this.keyList.size()) {
            return "NULL";
        }
        if (getColumnName(i2).equals(KEY_COL)) {
            return this.keyList.get(i);
        }
        if (getColumnName(i2).equals(VAL_COL)) {
            return this.valList.get(i);
        }
        throw new RuntimeException("You didn't correctly set col names");
    }

    public void setValue(Object obj, int i, int i2) {
        ArrayList arrayList;
        if (i2 > 1 || i2 < 0) {
            return;
        }
        if (i2 == 0) {
            arrayList = this.keyList;
        } else {
            arrayList = this.valList;
        }
        if (i >= this.keyList.size()) {
            return;
        }
        arrayList.set(i, obj);
        fireTableCellUpdated(i, i2);
    }

    public String getEntryDn() {
        return this.dn;
    }

    public BigInteger getEntryId() {
        return this.id;
    }

    public void delete(int i) {
        if (i >= this.keyList.size() || i < 0) {
            return;
        }
        this.keyList.remove(i);
        this.valList.remove(i);
        fireTableRowsDeleted(i, i);
    }

    public void insert(int i, Object obj, Object obj2) {
        if (i >= this.keyList.size() || i < 0) {
            return;
        }
        this.keyList.add(i, obj);
        this.valList.add(i, obj2);
        fireTableRowsInserted(i, i);
    }
}
