package org.apache.ldap.server.db;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.SubstringNode;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.regexp.RE;
import org.apache.regexp.RESyntaxException;
/* loaded from: classes3.dex */
public class SubstringEnumerator implements Enumerator {
    private final AttributeTypeRegistry attributeTypeRegistry;
    private final Database db;
    private final SubstringEvaluator evaluator;

    public SubstringEnumerator(Database database, AttributeTypeRegistry attributeTypeRegistry, SubstringEvaluator substringEvaluator) {
        this.db = database;
        this.evaluator = substringEvaluator;
        this.attributeTypeRegistry = attributeTypeRegistry;
    }

    @Override // org.apache.ldap.server.db.Enumerator
    public NamingEnumeration enumerate(final ExprNode exprNode) throws NamingException {
        SubstringNode substringNode = (SubstringNode) exprNode;
        Normalizer normalizer = this.attributeTypeRegistry.lookup(substringNode.getAttribute()).getSubstr().getNormalizer();
        if (this.db.hasUserIndexOn(substringNode.getAttribute())) {
            try {
                RE regex = substringNode.getRegex(normalizer);
                Index userIndex = this.db.getUserIndex(substringNode.getAttribute());
                if (substringNode.getInitial() == null) {
                    return userIndex.listIndices(regex);
                }
                return userIndex.listIndices(regex, substringNode.getInitial());
            } catch (RESyntaxException e2) {
                NamingException namingException = new NamingException(new StringBuffer("SubstringNode '").append(exprNode).append("' had incorrect syntax").toString());
                namingException.setRootCause(e2);
                throw namingException;
            }
        }
        return new IndexAssertionEnumeration(this.db.getNdnIndex().listIndices(), new IndexAssertion() { // from class: org.apache.ldap.server.db.SubstringEnumerator.1
            @Override // org.apache.ldap.server.db.IndexAssertion
            public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
                return SubstringEnumerator.this.evaluator.evaluate(exprNode, indexRecord);
            }
        });
    }
}
