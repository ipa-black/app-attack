package org.apache.ldap.server.db;

import java.math.BigInteger;
import javax.naming.NamingException;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.ScopeNode;
import org.apache.ldap.common.message.DerefAliasesEnum;
/* loaded from: classes3.dex */
public class ScopeEvaluator implements Evaluator {
    private Database db;

    public ScopeEvaluator(Database database) {
        this.db = database;
    }

    @Override // org.apache.ldap.server.db.Evaluator
    public boolean evaluate(ExprNode exprNode, IndexRecord indexRecord) throws NamingException {
        ScopeNode scopeNode = (ScopeNode) exprNode;
        int scope = scopeNode.getScope();
        if (scope != 0) {
            if (scope != 1) {
                if (scope == 2) {
                    return assertSubtreeScope(scopeNode, indexRecord.getEntryId());
                }
                throw new NamingException("Unrecognized search scope!");
            }
            return assertOneLevelScope(scopeNode, indexRecord.getEntryId());
        }
        return this.db.getEntryDn(indexRecord.getEntryId()).equals(scopeNode.getBaseDn());
    }

    public boolean assertSubtreeScope(ScopeNode scopeNode, BigInteger bigInteger) throws NamingException {
        String entryDn = this.db.getEntryDn(bigInteger);
        DerefAliasesEnum derefAliases = scopeNode.getDerefAliases();
        BigInteger entryId = this.db.getEntryId(scopeNode.getBaseDn());
        boolean endsWith = entryDn.endsWith(scopeNode.getBaseDn());
        if (derefAliases.derefInSearching()) {
            if (this.db.getAliasIndex().reverseLookup(bigInteger) != null) {
                return false;
            }
            if (endsWith) {
                return true;
            }
            return this.db.getSubAliasIndex().hasValue(entryId, bigInteger);
        }
        return endsWith;
    }

    public boolean assertOneLevelScope(ScopeNode scopeNode, BigInteger bigInteger) throws NamingException {
        DerefAliasesEnum derefAliases = scopeNode.getDerefAliases();
        BigInteger entryId = this.db.getEntryId(scopeNode.getBaseDn());
        boolean hasValue = this.db.getHierarchyIndex().hasValue(entryId, bigInteger);
        if (derefAliases.derefInSearching()) {
            if (this.db.getAliasIndex().reverseLookup(bigInteger) != null) {
                return false;
            }
            if (hasValue) {
                return true;
            }
            return this.db.getOneAliasIndex().hasValue(entryId, bigInteger);
        }
        return hasValue;
    }
}
