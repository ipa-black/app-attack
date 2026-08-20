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
/* compiled from: AutoValue_User.java */
/* loaded from: classes2.dex */
public final class m extends f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        super(str, str2, str3, str4, str5, str6, map);
    }

    /* compiled from: AutoValue_User.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<z> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f9147a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<Map<String, Object>> f9148b;

        /* renamed from: c  reason: collision with root package name */
        private final Gson f9149c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9149c = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, z zVar) throws IOException {
            if (zVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("deviceId");
            if (zVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f9147a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9149c.getAdapter(String.class);
                    this.f9147a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, zVar.a());
            }
            jsonWriter.name("deviceIdType");
            if (zVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f9147a;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9149c.getAdapter(String.class);
                    this.f9147a = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, zVar.b());
            }
            jsonWriter.name("deviceOs");
            if (zVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f9147a;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9149c.getAdapter(String.class);
                    this.f9147a = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, zVar.c());
            }
            jsonWriter.name("mopubConsent");
            if (zVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter4 = this.f9147a;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.f9149c.getAdapter(String.class);
                    this.f9147a = typeAdapter4;
                }
                typeAdapter4.write(jsonWriter, zVar.e());
            }
            jsonWriter.name("uspIab");
            if (zVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f9147a;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.f9149c.getAdapter(String.class);
                    this.f9147a = typeAdapter5;
                }
                typeAdapter5.write(jsonWriter, zVar.f());
            }
            jsonWriter.name("uspOptout");
            if (zVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter6 = this.f9147a;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f9149c.getAdapter(String.class);
                    this.f9147a = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, zVar.g());
            }
            jsonWriter.name("ext");
            if (zVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Map<String, Object>> typeAdapter7 = this.f9148b;
                if (typeAdapter7 == null) {
                    typeAdapter7 = this.f9149c.getAdapter(TypeToken.getParameterized(Map.class, String.class, Object.class));
                    this.f9148b = typeAdapter7;
                }
                typeAdapter7.write(jsonWriter, zVar.d());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public z read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            Map<String, Object> map = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("deviceId".equals(nextName)) {
                        TypeAdapter<String> typeAdapter = this.f9147a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9149c.getAdapter(String.class);
                            this.f9147a = typeAdapter;
                        }
                        str = typeAdapter.read(jsonReader);
                    } else if ("deviceIdType".equals(nextName)) {
                        TypeAdapter<String> typeAdapter2 = this.f9147a;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f9149c.getAdapter(String.class);
                            this.f9147a = typeAdapter2;
                        }
                        str2 = typeAdapter2.read(jsonReader);
                    } else if ("deviceOs".equals(nextName)) {
                        TypeAdapter<String> typeAdapter3 = this.f9147a;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f9149c.getAdapter(String.class);
                            this.f9147a = typeAdapter3;
                        }
                        str3 = typeAdapter3.read(jsonReader);
                    } else if ("mopubConsent".equals(nextName)) {
                        TypeAdapter<String> typeAdapter4 = this.f9147a;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.f9149c.getAdapter(String.class);
                            this.f9147a = typeAdapter4;
                        }
                        str4 = typeAdapter4.read(jsonReader);
                    } else if ("uspIab".equals(nextName)) {
                        TypeAdapter<String> typeAdapter5 = this.f9147a;
                        if (typeAdapter5 == null) {
                            typeAdapter5 = this.f9149c.getAdapter(String.class);
                            this.f9147a = typeAdapter5;
                        }
                        str5 = typeAdapter5.read(jsonReader);
                    } else if ("uspOptout".equals(nextName)) {
                        TypeAdapter<String> typeAdapter6 = this.f9147a;
                        if (typeAdapter6 == null) {
                            typeAdapter6 = this.f9149c.getAdapter(String.class);
                            this.f9147a = typeAdapter6;
                        }
                        str6 = typeAdapter6.read(jsonReader);
                    } else if ("ext".equals(nextName)) {
                        TypeAdapter<Map<String, Object>> typeAdapter7 = this.f9148b;
                        if (typeAdapter7 == null) {
                            typeAdapter7 = this.f9149c.getAdapter(TypeToken.getParameterized(Map.class, String.class, Object.class));
                            this.f9148b = typeAdapter7;
                        }
                        map = typeAdapter7.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new m(str, str2, str3, str4, str5, str6, map);
        }

        public String toString() {
            return "TypeAdapter(User)";
        }
    }
}
