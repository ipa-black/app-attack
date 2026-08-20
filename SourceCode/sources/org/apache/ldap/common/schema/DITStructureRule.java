package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface DITStructureRule extends SchemaObject {
    NameForm getNameForm() throws NamingException;

    DITStructureRule[] getSuperClasses() throws NamingException;
}
