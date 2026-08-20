package org.apache.ldap.server.schema.bootstrap;
/* loaded from: classes3.dex */
public interface BootstrapSchema {
    String getBaseClassName();

    String getDefaultBaseClassName();

    String[] getDependencies();

    String getFullClassName(ProducerTypeEnum producerTypeEnum);

    String getFullDefaultBaseClassName(ProducerTypeEnum producerTypeEnum);

    String getOwner();

    String getPackageName();

    String getSchemaName();

    String getUnqualifiedClassName();

    String getUnqualifiedClassName(ProducerTypeEnum producerTypeEnum);
}
