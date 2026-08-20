package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.AcceptAllSyntaxChecker;
/* loaded from: classes3.dex */
public class NisSyntaxCheckerProducer extends AbstractBootstrapProducer {
    public NisSyntaxCheckerProducer() {
        super(ProducerTypeEnum.SYNTAX_CHECKER_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        AcceptAllSyntaxChecker acceptAllSyntaxChecker = new AcceptAllSyntaxChecker("1.3.6.1.1.1.0.0");
        producerCallback.schemaObjectProduced(this, acceptAllSyntaxChecker.getSyntaxOid(), acceptAllSyntaxChecker);
        AcceptAllSyntaxChecker acceptAllSyntaxChecker2 = new AcceptAllSyntaxChecker("1.3.6.1.1.1.0.1");
        producerCallback.schemaObjectProduced(this, acceptAllSyntaxChecker2.getSyntaxOid(), acceptAllSyntaxChecker2);
    }
}
