package com.criteo.publisher.model.b0;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import io.bidmachine.utils.IabUtils;
import java.io.IOException;
import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_NativeProduct.java */
/* loaded from: classes2.dex */
public final class l extends f {
    l(String str, String str2, String str3, URI uri, String str4, o oVar) {
        super(str, str2, str3, uri, str4, oVar);
    }

    /* compiled from: AutoValue_NativeProduct.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<r> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f9091a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<URI> f9092b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<o> f9093c;

        /* renamed from: d  reason: collision with root package name */
        private final Gson f9094d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9094d = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, r rVar) throws IOException {
            if (rVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("title");
            if (rVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f9091a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9094d.getAdapter(String.class);
                    this.f9091a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, rVar.g());
            }
            jsonWriter.name("description");
            if (rVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f9091a;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9094d.getAdapter(String.class);
                    this.f9091a = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, rVar.c());
            }
            jsonWriter.name("price");
            if (rVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f9091a;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9094d.getAdapter(String.class);
                    this.f9091a = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, rVar.f());
            }
            jsonWriter.name(IabUtils.KEY_CLICK_URL);
            if (rVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<URI> typeAdapter4 = this.f9092b;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.f9094d.getAdapter(URI.class);
                    this.f9092b = typeAdapter4;
                }
                typeAdapter4.write(jsonWriter, rVar.b());
            }
            jsonWriter.name("callToAction");
            if (rVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f9091a;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.f9094d.getAdapter(String.class);
                    this.f9091a = typeAdapter5;
                }
                typeAdapter5.write(jsonWriter, rVar.a());
            }
            jsonWriter.name("image");
            if (rVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<o> typeAdapter6 = this.f9093c;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f9094d.getAdapter(o.class);
                    this.f9093c = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, rVar.d());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public r read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            String str3 = null;
            URI uri = null;
            String str4 = null;
            o oVar = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("title".equals(nextName)) {
                        TypeAdapter<String> typeAdapter = this.f9091a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9094d.getAdapter(String.class);
                            this.f9091a = typeAdapter;
                        }
                        str = typeAdapter.read(jsonReader);
                    } else if ("description".equals(nextName)) {
                        TypeAdapter<String> typeAdapter2 = this.f9091a;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f9094d.getAdapter(String.class);
                            this.f9091a = typeAdapter2;
                        }
                        str2 = typeAdapter2.read(jsonReader);
                    } else if ("price".equals(nextName)) {
                        TypeAdapter<String> typeAdapter3 = this.f9091a;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f9094d.getAdapter(String.class);
                            this.f9091a = typeAdapter3;
                        }
                        str3 = typeAdapter3.read(jsonReader);
                    } else if (IabUtils.KEY_CLICK_URL.equals(nextName)) {
                        TypeAdapter<URI> typeAdapter4 = this.f9092b;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.f9094d.getAdapter(URI.class);
                            this.f9092b = typeAdapter4;
                        }
                        uri = typeAdapter4.read(jsonReader);
                    } else if ("callToAction".equals(nextName)) {
                        TypeAdapter<String> typeAdapter5 = this.f9091a;
                        if (typeAdapter5 == null) {
                            typeAdapter5 = this.f9094d.getAdapter(String.class);
                            this.f9091a = typeAdapter5;
                        }
                        str4 = typeAdapter5.read(jsonReader);
                    } else if ("image".equals(nextName)) {
                        TypeAdapter<o> typeAdapter6 = this.f9093c;
                        if (typeAdapter6 == null) {
                            typeAdapter6 = this.f9094d.getAdapter(o.class);
                            this.f9093c = typeAdapter6;
                        }
                        oVar = typeAdapter6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new l(str, str2, str3, uri, str4, oVar);
        }

        public String toString() {
            return "TypeAdapter(NativeProduct)";
        }
    }
}
