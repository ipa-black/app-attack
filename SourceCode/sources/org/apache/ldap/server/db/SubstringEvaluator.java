package org.apache.ldap.server.db;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.SubstringNode;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.OidRegistry;
import org.apache.regexp.RE;
import org.apache.regexp.RESyntaxException;
/* loaded from: classes3.dex */
public class SubstringEvaluator implements Evaluator {
    private AttributeTypeRegistry attributeTypeRegistry;
    private Database db;
    private OidRegistry oidRegistry;

    public SubstringEvaluator(Database database, OidRegistry oidRegistry, AttributeTypeRegistry attributeTypeRegistry) {
        this.db = database;
        this.oidRegistry = oidRegistry;
        this.attributeTypeRegistry = attributeTypeRegistry;
    }

    @Override // org.apache.ldap.server.db.Evaluator
    public boolean evaluate(ExprNode exprNode, IndexRecord indexRecord) throws NamingException {
        SubstringNode substringNode = (SubstringNode) exprNode;
        Normalizer normalizer = this.attributeTypeRegistry.lookup(this.oidRegistry.getOid(substringNode.getAttribute())).getSubstr().getNormalizer();
        if (this.db.hasUserIndexOn(substringNode.getAttribute())) {
            IndexEnumeration listReverseIndices = this.db.getUserIndex(substringNode.getAttribute()).listReverseIndices(indexRecord.getEntryId());
            try {
                RE regex = substringNode.getRegex(normalizer);
                while (listReverseIndices.hasMore()) {
                    if (regex.match((String) ((IndexRecord) listReverseIndices.next()).getIndexKey())) {
                        listReverseIndices.close();
                        return true;
                    }
                }
                return false;
            } catch (RESyntaxException e2) {
                NamingException namingException = new NamingException(new StringBuffer("SubstringNode '").append(exprNode).append("' had incorrect syntax").toString());
                namingException.setRootCause(e2);
                throw namingException;
            }
        }
        if (indexRecord.getAttributes() == null) {
            indexRecord.setAttributes(this.db.lookup(indexRecord.getEntryId()));
        }
        Attribute attribute = indexRecord.getAttributes().get(substringNode.getAttribute());
        if (attribute == null) {
            return false;
        }
        try {
            RE regex2 = substringNode.getRegex(normalizer);
            NamingEnumeration all = attribute.getAll();
            while (all.hasMore()) {
                if (regex2.match((String) normalizer.normalize(all.next()))) {
                    all.close();
                    return true;
                }
            }
            return false;
        } catch (RESyntaxException e3) {
            NamingException namingException2 = new NamingException(new StringBuffer("SubstringNode '").append(exprNode).append("' had incorrect syntax").toString());
            namingException2.setRootCause(e3);
            throw namingException2;
        }
    }
}
