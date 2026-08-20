package com.criteo.publisher.model;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_CdbRequestSlot.java */
/* loaded from: classes2.dex */
public final class i extends b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str, String str2, Boolean bool, Boolean bool2, Boolean bool3, Collection<String> collection) {
        super(str, str2, bool, bool2, bool3, collection);
    }

    /* compiled from: AutoValue_CdbRequestSlot.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<q> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f9132a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<Boolean> f9133b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<Collection<String>> f9134c;

        /* renamed from: d  reason: collision with root package name */
        private final Gson f9135d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9135d = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, q qVar) throws IOException {
            if (qVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("impId");
            if (qVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f9132a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9135d.getAdapter(String.class);
                    this.f9132a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, qVar.a());
            }
            jsonWriter.name("placementId");
            if (qVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f9132a;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9135d.getAdapter(String.class);
                    this.f9132a = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, qVar.b());
            }
            jsonWriter.name("isNative");
            if (qVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter3 = this.f9133b;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9135d.getAdapter(Boolean.class);
                    this.f9133b = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, qVar.e());
            }
            jsonWriter.name("interstitial");
            if (qVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter4 = this.f9133b;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.f9135d.getAdapter(Boolean.class);
                    this.f9133b = typeAdapter4;
                }
                typeAdapter4.write(jsonWriter, qVar.d());
            }
            jsonWriter.name("rewarded");
            if (qVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter5 = this.f9133b;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.f9135d.getAdapter(Boolean.class);
                    this.f9133b = typeAdapter5;
                }
                typeAdapter5.write(jsonWriter, qVar.f());
            }
            jsonWriter.name("sizes");
            if (qVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Collection<String>> typeAdapter6 = this.f9134c;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f9135d.getAdapter(TypeToken.getParameterized(Collection.class, String.class));
                    this.f9134c = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, qVar.c());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public q read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            Boolean bool = null;
            Boolean bool2 = null;
            Boolean bool3 = null;
            Collection<String> collection = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    char c2 = 65535;
                    switch (nextName.hashCode()) {
                        case -378584607:
                            if (nextName.equals("isNative")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -239580146:
                            if (nextName.equals("rewarded")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 100326919:
                            if (nextName.equals("impId")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 109453458:
                            if (nextName.equals("sizes")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 604727084:
                            if (nextName.equals("interstitial")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 732231392:
                            if (nextName.equals("placementId")) {
                                c2 = 5;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            TypeAdapter<Boolean> typeAdapter = this.f9133b;
                            if (typeAdapter == null) {
                                typeAdapter = this.f9135d.getAdapter(Boolean.class);
                                this.f9133b = typeAdapter;
                            }
                            bool = typeAdapter.read(jsonReader);
                            continue;
                        case 1:
                            TypeAdapter<Boolean> typeAdapter2 = this.f9133b;
                            if (typeAdapter2 == null) {
                                typeAdapter2 = this.f9135d.getAdapter(Boolean.class);
                                this.f9133b = typeAdapter2;
                            }
                            bool3 = typeAdapter2.read(jsonReader);
                            continue;
                        case 2:
                            TypeAdapter<String> typeAdapter3 = this.f9132a;
                            if (typeAdapter3 == null) {
                                typeAdapter3 = this.f9135d.getAdapter(String.class);
                                this.f9132a = typeAdapter3;
                            }
                            str = typeAdapter3.read(jsonReader);
                            continue;
                        case 3:
                            TypeAdapter<Collection<String>> typeAdapter4 = this.f9134c;
                            if (typeAdapter4 == null) {
                                typeAdapter4 = this.f9135d.getAdapter(TypeToken.getParameterized(Collection.class, String.class));
                                this.f9134c = typeAdapter4;
                            }
                            collection = typeAdapter4.read(jsonReader);
                            continue;
                        case 4:
                            TypeAdapter<Boolean> typeAdapter5 = this.f9133b;
                            if (typeAdapter5 == null) {
                                typeAdapter5 = this.f9135d.getAdapter(Boolean.class);
                                this.f9133b = typeAdapter5;
                            }
                            bool2 = typeAdapter5.read(jsonReader);
                            continue;
                        case 5:
                            TypeAdapter<String> typeAdapter6 = this.f9132a;
                            if (typeAdapter6 == null) {
                                typeAdapter6 = this.f9135d.getAdapter(String.class);
                                this.f9132a = typeAdapter6;
                            }
                            str2 = typeAdapter6.read(jsonReader);
                            continue;
                        default:
                            jsonReader.skipValue();
                            continue;
                    }
                }
            }
            jsonReader.endObject();
            return new i(str, str2, bool, bool2, bool3, collection);
        }

        public String toString() {
            return "TypeAdapter(CdbRequestSlot)";
        }
    }
}
