package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class AutofsSyntaxCheckerProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public AutofsSyntaxCheckerProducer() {
        super(ProducerTypeEnum.SYNTAX_CHECKER_PRODUCER);
    }
}
