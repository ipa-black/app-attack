package org.apache.ldap.server.db.jdbm;

import java.math.BigInteger;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import jdbm.RecordManager;
import jdbm.helper.StringComparator;
import org.apache.ldap.common.util.BigIntegerComparator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.db.MasterTable;
import org.apache.ldap.server.schema.SerializableComparator;
/* loaded from: classes3.dex */
public class JdbmMasterTable extends JdbmTable implements MasterTable {
    private JdbmTable adminTbl;
    private static final StringComparator STRCOMP = new StringComparator();
    private static final SerializableComparator BIG_INTEGER_COMPARATOR = new SerializableComparator("1.2.6.1.4.1.18060.1.1.1.2.2") { // from class: org.apache.ldap.server.db.jdbm.JdbmMasterTable.1
        private static final long serialVersionUID = 4048791282048841016L;

        @Override // org.apache.ldap.server.schema.SerializableComparator, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return BigIntegerComparator.INSTANCE.compare(obj, obj2);
        }
    };
    private static final SerializableComparator STRING_COMPARATOR = new SerializableComparator("1.2.6.1.4.1.18060.1.1.1.2.3") { // from class: org.apache.ldap.server.db.jdbm.JdbmMasterTable.2
        private static final long serialVersionUID = 3258689922792961845L;

        @Override // org.apache.ldap.server.schema.SerializableComparator, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return JdbmMasterTable.STRCOMP.compare(obj, obj2);
        }
    };

    public JdbmMasterTable(RecordManager recordManager) throws NamingException {
        super(MasterTable.DBF, recordManager, BIG_INTEGER_COMPARATOR);
        this.adminTbl = null;
        JdbmTable jdbmTable = new JdbmTable(SystemPartition.ADMIN_UID, recordManager, STRING_COMPARATOR);
        this.adminTbl = jdbmTable;
        if (((String) jdbmTable.get(MasterTable.SEQPROP_KEY)) == null) {
            this.adminTbl.put(MasterTable.SEQPROP_KEY, BigInteger.ZERO.toString());
        }
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public Attributes get(BigInteger bigInteger) throws NamingException {
        return (Attributes) super.get((Object) bigInteger);
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public Attributes put(Attributes attributes, BigInteger bigInteger) throws NamingException {
        return (Attributes) super.put(bigInteger, attributes);
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public Attributes delete(BigInteger bigInteger) throws NamingException {
        return (Attributes) super.remove(bigInteger);
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public BigInteger getCurrentId() throws NamingException {
        BigInteger bigInteger;
        synchronized (this.adminTbl) {
            bigInteger = new BigInteger((String) this.adminTbl.get(MasterTable.SEQPROP_KEY));
        }
        return bigInteger;
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public BigInteger getNextId() throws NamingException {
        BigInteger add;
        synchronized (this.adminTbl) {
            add = new BigInteger((String) this.adminTbl.get(MasterTable.SEQPROP_KEY)).add(BigInteger.ONE);
            this.adminTbl.put(MasterTable.SEQPROP_KEY, add.toString());
        }
        return add;
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public String getProperty(String str) throws NamingException {
        String str2;
        synchronized (this.adminTbl) {
            str2 = (String) this.adminTbl.get(str);
        }
        return str2;
    }

    @Override // org.apache.ldap.server.db.MasterTable
    public void setProperty(String str, String str2) throws NamingException {
        synchronized (this.adminTbl) {
            this.adminTbl.put(str, str2);
        }
    }
}
