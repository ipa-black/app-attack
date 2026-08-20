package org.apache.ldap.server.db.gui;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.swing.tree.TreeNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.IndexRecord;
import org.apache.ldap.server.db.SearchEngine;
/* loaded from: classes3.dex */
public class EntryNode implements TreeNode {
    private final ArrayList children;
    private final Database db;
    private final Attributes entry;
    private final BigInteger id;
    private final EntryNode parent;

    public boolean getAllowsChildren() {
        return true;
    }

    public EntryNode(BigInteger bigInteger, EntryNode entryNode, Database database, Attributes attributes, HashMap hashMap) {
        this(bigInteger, entryNode, database, attributes, hashMap, null, null);
    }

    public EntryNode(BigInteger bigInteger, EntryNode entryNode, Database database, Attributes attributes, HashMap hashMap, ExprNode exprNode, SearchEngine searchEngine) {
        this.db = database;
        this.id = bigInteger;
        this.entry = attributes;
        this.children = new ArrayList();
        if (entryNode == null) {
            this.parent = this;
        } else {
            this.parent = entryNode;
        }
        try {
            ArrayList arrayList = new ArrayList();
            NamingEnumeration list = database.list(bigInteger);
            while (list.hasMore()) {
                IndexRecord indexRecord = new IndexRecord();
                indexRecord.copy((IndexRecord) list.next());
                arrayList.add(indexRecord);
            }
            list.close();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                IndexRecord indexRecord2 = (IndexRecord) it.next();
                if (searchEngine != null && exprNode != null) {
                    if (database.getChildCount(indexRecord2.getEntryId()) == 0) {
                        if (searchEngine.evaluate(exprNode, indexRecord2.getEntryId())) {
                            this.children.add(new EntryNode(indexRecord2.getEntryId(), this, database, database.lookup(indexRecord2.getEntryId()), hashMap, exprNode, searchEngine));
                        }
                    } else {
                        this.children.add(new EntryNode(indexRecord2.getEntryId(), this, database, database.lookup(indexRecord2.getEntryId()), hashMap, exprNode, searchEngine));
                    }
                } else {
                    this.children.add(new EntryNode(indexRecord2.getEntryId(), this, database, database.lookup(indexRecord2.getEntryId()), hashMap));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        hashMap.put(bigInteger, this);
    }

    public Enumeration children() {
        return Collections.enumeration(this.children);
    }

    public TreeNode getChildAt(int i) {
        return (TreeNode) this.children.get(i);
    }

    public int getChildCount() {
        return this.children.size();
    }

    public int getIndex(TreeNode treeNode) {
        return this.children.indexOf(treeNode);
    }

    public TreeNode getParent() {
        return this.parent;
    }

    public boolean isLeaf() {
        return this.children.size() <= 0;
    }

    public String getEntryDn() throws NamingException {
        return this.db.getEntryDn(this.id);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            LdapName ldapName = new LdapName(this.db.getEntryDn(this.id));
            stringBuffer.append("(").append(this.id).append(") ");
            stringBuffer.append(ldapName.getRdn());
        } catch (NamingException e2) {
            e2.printStackTrace();
            stringBuffer.append(new StringBuffer("ERROR: ").append(e2.getMessage()).toString());
        }
        if (this.children.size() > 0) {
            stringBuffer.append(" [").append(this.children.size()).append("]");
        }
        return stringBuffer.toString();
    }

    public Attributes getLdapEntry() {
        return this.entry;
    }

    public BigInteger getEntryId() {
        return this.id;
    }
}
