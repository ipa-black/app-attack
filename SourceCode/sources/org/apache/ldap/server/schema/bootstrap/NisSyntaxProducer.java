package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.server.schema.SyntaxCheckerRegistry;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class NisSyntaxProducer extends AbstractBootstrapProducer {
    public NisSyntaxProducer() {
        super(ProducerTypeEnum.SYNTAX_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        SyntaxCheckerRegistry syntaxCheckerRegistry = bootstrapRegistries.getSyntaxCheckerRegistry();
        AbstractBootstrapProducer.BootstrapSyntax bootstrapSyntax = new AbstractBootstrapProducer.BootstrapSyntax("1.3.6.1.1.1.0.0", syntaxCheckerRegistry);
        bootstrapSyntax.setDescription("RFC2307 NIS Netgroup Triple");
        bootstrapSyntax.setNames(new String[]{"NIS Netgroup Triple"});
        bootstrapSyntax.setHumanReadible(true);
        producerCallback.schemaObjectProduced(this, bootstrapSyntax.getOid(), bootstrapSyntax);
        AbstractBootstrapProducer.BootstrapSyntax bootstrapSyntax2 = new AbstractBootstrapProducer.BootstrapSyntax("1.3.6.1.1.1.0.1", syntaxCheckerRegistry);
        bootstrapSyntax2.setNames(new String[]{"NIS Boot Parameter"});
        bootstrapSyntax2.setHumanReadible(true);
        producerCallback.schemaObjectProduced(this, bootstrapSyntax2.getOid(), bootstrapSyntax2);
    }
}
