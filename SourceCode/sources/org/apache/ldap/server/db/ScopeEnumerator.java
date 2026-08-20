package org.apache.ldap.server.db;

import java.math.BigInteger;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.ScopeNode;
import org.apache.ldap.common.util.SingletonEnumeration;
/* loaded from: classes3.dex */
public class ScopeEnumerator implements Enumerator {
    private Database db;
    private ScopeEvaluator evaluator;

    public ScopeEnumerator(Database database, ScopeEvaluator scopeEvaluator) {
        this.db = database;
        this.evaluator = scopeEvaluator;
    }

    @Override // org.apache.ldap.server.db.Enumerator
    public NamingEnumeration enumerate(ExprNode exprNode) throws NamingException {
        ScopeNode scopeNode = (ScopeNode) exprNode;
        BigInteger entryId = this.db.getEntryId(scopeNode.getBaseDn());
        int scope = scopeNode.getScope();
        if (scope == 0) {
            IndexRecord indexRecord = new IndexRecord();
            indexRecord.setEntryId(entryId);
            indexRecord.setIndexKey(scopeNode.getBaseDn());
            return new SingletonEnumeration(indexRecord);
        } else if (scope != 1) {
            if (scope == 2) {
                return enumerateDescendants(scopeNode);
            }
            throw new NamingException("Unrecognized search scope!");
        } else {
            return enumerateChildren(scopeNode.getBaseDn(), scopeNode.getDerefAliases().derefInSearching());
        }
    }

    private NamingEnumeration enumerateChildren(String str, boolean z) throws NamingException {
        Index hierarchyIndex = this.db.getHierarchyIndex();
        BigInteger entryId = this.db.getEntryId(str);
        IndexEnumeration listIndices = hierarchyIndex.listIndices(entryId);
        if (z) {
            return new DisjunctionEnumeration(new NamingEnumeration[]{new IndexAssertionEnumeration(listIndices, new AssertNotAlias()), this.db.getOneAliasIndex().listIndices(entryId)});
        }
        return listIndices;
    }

    private NamingEnumeration enumerateDescendants(final ScopeNode scopeNode) throws NamingException {
        if (!scopeNode.getDerefAliases().derefInSearching()) {
            return new IndexAssertionEnumeration(this.db.getNdnIndex().listIndices(), new AssertDescendant(scopeNode));
        }
        return new IndexAssertionEnumeration(this.db.getNdnIndex().listIndices(), new IndexAssertion() { // from class: org.apache.ldap.server.db.ScopeEnumerator.1
            @Override // org.apache.ldap.server.db.IndexAssertion
            public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
                return ScopeEnumerator.this.evaluator.evaluate(scopeNode, indexRecord);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class AssertDescendant implements IndexAssertion {
        private final ScopeNode scope;

        AssertDescendant(ScopeNode scopeNode) {
            this.scope = scopeNode;
        }

        @Override // org.apache.ldap.server.db.IndexAssertion
        public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
            return ScopeEnumerator.this.db.getEntryDn(indexRecord.getEntryId()).endsWith(this.scope.getBaseDn());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class AssertNotAlias implements IndexAssertion {
        AssertNotAlias() {
        }

        @Override // org.apache.ldap.server.db.IndexAssertion
        public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
            return ScopeEnumerator.this.db.getAliasIndex().reverseLookup(indexRecord.getEntryId()) == null;
        }
    }
}
