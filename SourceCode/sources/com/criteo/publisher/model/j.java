package com.criteo.publisher.model;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_Publisher.java */
/* loaded from: classes2.dex */
public final class j extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(String str, String str2, Map<String, Object> map) {
        super(str, str2, map);
    }

    /* compiled from: AutoValue_Publisher.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<v> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f9136a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<Map<String, Object>> f9137b;

        /* renamed from: c  reason: collision with root package name */
        private final Gson f9138c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9138c = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, v vVar) throws IOException {
            if (vVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("bundleId");
            if (vVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f9136a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9138c.getAdapter(String.class);
                    this.f9136a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, vVar.a());
            }
            jsonWriter.name("cpId");
            if (vVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f9136a;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9138c.getAdapter(String.class);
                    this.f9136a = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, vVar.b());
            }
            jsonWriter.name("ext");
            if (vVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Map<String, Object>> typeAdapter3 = this.f9137b;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9138c.getAdapter(TypeToken.getParameterized(Map.class, String.class, Object.class));
                    this.f9137b = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, vVar.c());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public v read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str2 = null;
            Map<String, Object> map = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("cpId")) {
                        TypeAdapter<String> typeAdapter = this.f9136a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9138c.getAdapter(String.class);
                            this.f9136a = typeAdapter;
                        }
                        str2 = typeAdapter.read(jsonReader);
                    } else if ("bundleId".equals(nextName)) {
                        TypeAdapter<String> typeAdapter2 = this.f9136a;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f9138c.getAdapter(String.class);
                            this.f9136a = typeAdapter2;
                        }
                        str = typeAdapter2.read(jsonReader);
                    } else if ("ext".equals(nextName)) {
                        TypeAdapter<Map<String, Object>> typeAdapter3 = this.f9137b;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f9138c.getAdapter(TypeToken.getParameterized(Map.class, String.class, Object.class));
                            this.f9137b = typeAdapter3;
                        }
                        map = typeAdapter3.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new j(str, str2, map);
        }

        public String toString() {
            return "TypeAdapter(Publisher)";
        }
    }
}
