package org.apache.ldap.server.db;

import java.math.BigInteger;
import java.util.Map;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.SearchControls;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.ScopeNode;
import org.apache.ldap.common.message.DerefAliasesEnum;
import org.apache.ldap.common.name.LdapName;
/* loaded from: classes3.dex */
public class DefaultSearchEngine implements SearchEngine {
    private Database db;
    private ExpressionEnumerator enumerator;
    private ExpressionEvaluator evaluator;
    private final Optimizer optimizer;

    public DefaultSearchEngine(Database database, ExpressionEvaluator expressionEvaluator, ExpressionEnumerator expressionEnumerator) {
        this.db = database;
        this.evaluator = expressionEvaluator;
        this.enumerator = expressionEnumerator;
        this.optimizer = new DefaultOptimizer(database);
    }

    @Override // org.apache.ldap.server.db.SearchEngine
    public Optimizer getOptimizer() {
        return this.optimizer;
    }

    @Override // org.apache.ldap.server.db.SearchEngine
    public NamingEnumeration search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) throws NamingException {
        String str = (String) this.db.getAliasIndex().reverseLookup(this.db.getEntryId(name.toString()));
        DerefAliasesEnum derefAliasesEnum = DerefAliasesEnum.getEnum(map);
        if (str != null && derefAliasesEnum.derefFindingBase() && str != null) {
            name = new LdapName(str);
        }
        BranchNode branchNode = new BranchNode(10);
        branchNode.getChildren().add(new ScopeNode(map, name.toString(), searchControls.getSearchScope()));
        branchNode.getChildren().add(exprNode);
        this.optimizer.annotate(branchNode);
        return this.enumerator.enumerate(branchNode);
    }

    @Override // org.apache.ldap.server.db.SearchEngine
    public boolean evaluate(ExprNode exprNode, BigInteger bigInteger) throws NamingException {
        IndexRecord indexRecord = new IndexRecord();
        indexRecord.setEntryId(bigInteger);
        return this.evaluator.evaluate(exprNode, indexRecord);
    }
}
