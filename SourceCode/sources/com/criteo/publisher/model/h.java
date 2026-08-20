package com.criteo.publisher.model;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_CdbRequest.java */
/* loaded from: classes2.dex */
public final class h extends com.criteo.publisher.model.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, v vVar, z zVar, String str2, int i, com.criteo.publisher.l0.d.c cVar, List<q> list) {
        super(str, vVar, zVar, str2, i, cVar, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CdbRequest.java */
    /* loaded from: classes2.dex */
    public static final class a extends TypeAdapter<o> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f9125a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<v> f9126b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<z> f9127c;

        /* renamed from: d  reason: collision with root package name */
        private volatile TypeAdapter<Integer> f9128d;

        /* renamed from: e  reason: collision with root package name */
        private volatile TypeAdapter<com.criteo.publisher.l0.d.c> f9129e;

        /* renamed from: f  reason: collision with root package name */
        private volatile TypeAdapter<List<q>> f9130f;

        /* renamed from: g  reason: collision with root package name */
        private final Gson f9131g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9131g = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, o oVar) throws IOException {
            if (oVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("id");
            if (oVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f9125a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9131g.getAdapter(String.class);
                    this.f9125a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, oVar.b());
            }
            jsonWriter.name("publisher");
            if (oVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<v> typeAdapter2 = this.f9126b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9131g.getAdapter(v.class);
                    this.f9126b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, oVar.d());
            }
            jsonWriter.name("user");
            if (oVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<z> typeAdapter3 = this.f9127c;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9131g.getAdapter(z.class);
                    this.f9127c = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, oVar.g());
            }
            jsonWriter.name("sdkVersion");
            if (oVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter4 = this.f9125a;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.f9131g.getAdapter(String.class);
                    this.f9125a = typeAdapter4;
                }
                typeAdapter4.write(jsonWriter, oVar.e());
            }
            jsonWriter.name("profileId");
            TypeAdapter<Integer> typeAdapter5 = this.f9128d;
            if (typeAdapter5 == null) {
                typeAdapter5 = this.f9131g.getAdapter(Integer.class);
                this.f9128d = typeAdapter5;
            }
            typeAdapter5.write(jsonWriter, Integer.valueOf(oVar.c()));
            jsonWriter.name("gdprConsent");
            if (oVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<com.criteo.publisher.l0.d.c> typeAdapter6 = this.f9129e;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f9131g.getAdapter(com.criteo.publisher.l0.d.c.class);
                    this.f9129e = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, oVar.a());
            }
            jsonWriter.name("slots");
            if (oVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<List<q>> typeAdapter7 = this.f9130f;
                if (typeAdapter7 == null) {
                    typeAdapter7 = this.f9131g.getAdapter(TypeToken.getParameterized(List.class, q.class));
                    this.f9130f = typeAdapter7;
                }
                typeAdapter7.write(jsonWriter, oVar.f());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public o read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            int i = 0;
            String str = null;
            v vVar = null;
            z zVar = null;
            String str2 = null;
            com.criteo.publisher.l0.d.c cVar = null;
            List<q> list = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("gdprConsent")) {
                        TypeAdapter<com.criteo.publisher.l0.d.c> typeAdapter = this.f9129e;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9131g.getAdapter(com.criteo.publisher.l0.d.c.class);
                            this.f9129e = typeAdapter;
                        }
                        cVar = typeAdapter.read(jsonReader);
                    } else if ("id".equals(nextName)) {
                        TypeAdapter<String> typeAdapter2 = this.f9125a;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f9131g.getAdapter(String.class);
                            this.f9125a = typeAdapter2;
                        }
                        str = typeAdapter2.read(jsonReader);
                    } else if ("publisher".equals(nextName)) {
                        TypeAdapter<v> typeAdapter3 = this.f9126b;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f9131g.getAdapter(v.class);
                            this.f9126b = typeAdapter3;
                        }
                        vVar = typeAdapter3.read(jsonReader);
                    } else if ("user".equals(nextName)) {
                        TypeAdapter<z> typeAdapter4 = this.f9127c;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.f9131g.getAdapter(z.class);
                            this.f9127c = typeAdapter4;
                        }
                        zVar = typeAdapter4.read(jsonReader);
                    } else if ("sdkVersion".equals(nextName)) {
                        TypeAdapter<String> typeAdapter5 = this.f9125a;
                        if (typeAdapter5 == null) {
                            typeAdapter5 = this.f9131g.getAdapter(String.class);
                            this.f9125a = typeAdapter5;
                        }
                        str2 = typeAdapter5.read(jsonReader);
                    } else if ("profileId".equals(nextName)) {
                        TypeAdapter<Integer> typeAdapter6 = this.f9128d;
                        if (typeAdapter6 == null) {
                            typeAdapter6 = this.f9131g.getAdapter(Integer.class);
                            this.f9128d = typeAdapter6;
                        }
                        i = typeAdapter6.read(jsonReader).intValue();
                    } else if ("slots".equals(nextName)) {
                        TypeAdapter<List<q>> typeAdapter7 = this.f9130f;
                        if (typeAdapter7 == null) {
                            typeAdapter7 = this.f9131g.getAdapter(TypeToken.getParameterized(List.class, q.class));
                            this.f9130f = typeAdapter7;
                        }
                        list = typeAdapter7.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new h(str, vVar, zVar, str2, i, cVar, list);
        }

        public String toString() {
            return "TypeAdapter(CdbRequest)";
        }
    }
}
