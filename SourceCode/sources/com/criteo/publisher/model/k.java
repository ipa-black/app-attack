package com.criteo.publisher.model;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_RemoteConfigRequest.java */
/* loaded from: classes2.dex */
public final class k extends d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(String str, String str2, String str3, int i, String str4, String str5) {
        super(str, str2, str3, i, str4, str5);
    }

    /* compiled from: AutoValue_RemoteConfigRequest.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<w> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f9139a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<Integer> f9140b;

        /* renamed from: c  reason: collision with root package name */
        private final Gson f9141c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9141c = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, w wVar) throws IOException {
            if (wVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("cpId");
            if (wVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f9139a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9141c.getAdapter(String.class);
                    this.f9139a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, wVar.b());
            }
            jsonWriter.name("bundleId");
            if (wVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f9139a;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9141c.getAdapter(String.class);
                    this.f9139a = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, wVar.a());
            }
            jsonWriter.name("sdkVersion");
            if (wVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f9139a;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9141c.getAdapter(String.class);
                    this.f9139a = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, wVar.f());
            }
            jsonWriter.name("rtbProfileId");
            TypeAdapter<Integer> typeAdapter4 = this.f9140b;
            if (typeAdapter4 == null) {
                typeAdapter4 = this.f9141c.getAdapter(Integer.class);
                this.f9140b = typeAdapter4;
            }
            typeAdapter4.write(jsonWriter, Integer.valueOf(wVar.e()));
            jsonWriter.name("deviceId");
            if (wVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f9139a;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.f9141c.getAdapter(String.class);
                    this.f9139a = typeAdapter5;
                }
                typeAdapter5.write(jsonWriter, wVar.c());
            }
            jsonWriter.name("deviceOs");
            if (wVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter6 = this.f9139a;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f9141c.getAdapter(String.class);
                    this.f9139a = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, wVar.d());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public w read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            int i = 0;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("cpId")) {
                        TypeAdapter<String> typeAdapter = this.f9139a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9141c.getAdapter(String.class);
                            this.f9139a = typeAdapter;
                        }
                        str = typeAdapter.read(jsonReader);
                    } else if (nextName.equals("rtbProfileId")) {
                        TypeAdapter<Integer> typeAdapter2 = this.f9140b;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f9141c.getAdapter(Integer.class);
                            this.f9140b = typeAdapter2;
                        }
                        i = typeAdapter2.read(jsonReader).intValue();
                    } else if ("bundleId".equals(nextName)) {
                        TypeAdapter<String> typeAdapter3 = this.f9139a;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f9141c.getAdapter(String.class);
                            this.f9139a = typeAdapter3;
                        }
                        str2 = typeAdapter3.read(jsonReader);
                    } else if ("sdkVersion".equals(nextName)) {
                        TypeAdapter<String> typeAdapter4 = this.f9139a;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.f9141c.getAdapter(String.class);
                            this.f9139a = typeAdapter4;
                        }
                        str3 = typeAdapter4.read(jsonReader);
                    } else if ("deviceId".equals(nextName)) {
                        TypeAdapter<String> typeAdapter5 = this.f9139a;
                        if (typeAdapter5 == null) {
                            typeAdapter5 = this.f9141c.getAdapter(String.class);
                            this.f9139a = typeAdapter5;
                        }
                        str4 = typeAdapter5.read(jsonReader);
                    } else if ("deviceOs".equals(nextName)) {
                        TypeAdapter<String> typeAdapter6 = this.f9139a;
                        if (typeAdapter6 == null) {
                            typeAdapter6 = this.f9141c.getAdapter(String.class);
                            this.f9139a = typeAdapter6;
                        }
                        str5 = typeAdapter6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new k(str, str2, str3, i, str4, str5);
        }

        public String toString() {
            return "TypeAdapter(RemoteConfigRequest)";
        }
    }
}
