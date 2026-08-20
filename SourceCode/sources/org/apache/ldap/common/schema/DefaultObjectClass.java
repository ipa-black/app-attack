package org.apache.ldap.common.schema;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DefaultObjectClass extends AbstractSchemaObject implements ObjectClass, Serializable {
    private ArrayList mayList;
    private ArrayList mustList;
    private ArrayList superClasses;
    private ObjectClassTypeEnum type;
    private static final ObjectClass[] EMPTY_OCLASS_ARR = new ObjectClass[0];
    private static final AttributeType[] EMPTY_ATYPE_ARR = new AttributeType[0];

    DefaultObjectClass(String str) {
        super(str);
        this.type = ObjectClassTypeEnum.ABSTRACT;
    }

    @Override // org.apache.ldap.common.schema.ObjectClass
    public ObjectClass[] getSuperClasses() {
        ArrayList arrayList = this.superClasses;
        if (arrayList == null) {
            return EMPTY_OCLASS_ARR;
        }
        return (ObjectClass[]) arrayList.toArray(EMPTY_OCLASS_ARR);
    }

    @Override // org.apache.ldap.common.schema.ObjectClass
    public ObjectClassTypeEnum getType() {
        return this.type;
    }

    @Override // org.apache.ldap.common.schema.ObjectClass
    public AttributeType[] getMustList() {
        ArrayList arrayList = this.mustList;
        if (arrayList == null) {
            return EMPTY_ATYPE_ARR;
        }
        return (AttributeType[]) arrayList.toArray(EMPTY_ATYPE_ARR);
    }

    @Override // org.apache.ldap.common.schema.ObjectClass
    public AttributeType[] getMayList() {
        ArrayList arrayList = this.mayList;
        if (arrayList == null) {
            return EMPTY_ATYPE_ARR;
        }
        return (AttributeType[]) arrayList.toArray(EMPTY_ATYPE_ARR);
    }

    void addToMayList(List list) {
        if (this.mayList == null) {
            this.mayList = new ArrayList();
        }
        this.mayList.addAll(list);
    }

    void addToMustList(List list) {
        if (this.mustList == null) {
            this.mustList = new ArrayList();
        }
        this.mustList.addAll(list);
    }

    void addSuperClasses(List list) {
        if (this.superClasses == null) {
            this.superClasses = new ArrayList();
        }
        this.superClasses.addAll(list);
    }

    void setType(ObjectClassTypeEnum objectClassTypeEnum) {
        this.type = objectClassTypeEnum;
    }
}
