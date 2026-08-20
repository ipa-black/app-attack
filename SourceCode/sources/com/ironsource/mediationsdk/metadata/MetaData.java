package com.ironsource.mediationsdk.metadata;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MetaData {

    /* renamed from: a  reason: collision with root package name */
    private String f11213a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f11214b;

    /* renamed from: c  reason: collision with root package name */
    private List<MetaDataValueTypes> f11215c;

    /* loaded from: classes3.dex */
    public enum MetaDataValueTypes {
        META_DATA_VALUE_STRING,
        META_DATA_VALUE_BOOLEAN,
        META_DATA_VALUE_INT,
        META_DATA_VALUE_LONG,
        META_DATA_VALUE_DOUBLE,
        META_DATA_VALUE_FLOAT
    }

    public MetaData(String str, List<String> list) {
        this.f11213a = str;
        this.f11214b = list;
        this.f11215c = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            this.f11215c.add(MetaDataValueTypes.META_DATA_VALUE_STRING);
        }
    }

    public MetaData(String str, List<String> list, List<MetaDataValueTypes> list2) {
        this.f11213a = str;
        this.f11214b = list;
        this.f11215c = list2;
    }

    public String getMetaDataKey() {
        return this.f11213a;
    }

    public List<String> getMetaDataValue() {
        return this.f11214b;
    }

    public List<MetaDataValueTypes> getMetaDataValueType() {
        return this.f11215c;
    }
}
