package com.criteo.publisher.model.b0;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_NativeImage.java */
/* loaded from: classes2.dex */
public final class i extends c {
    i(URL url) {
        super(url);
    }

    /* compiled from: AutoValue_NativeImage.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<o> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<URL> f9083a;

        /* renamed from: b  reason: collision with root package name */
        private final Gson f9084b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9084b = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, o oVar) throws IOException {
            if (oVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("url");
            if (oVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<URL> typeAdapter = this.f9083a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9084b.getAdapter(URL.class);
                    this.f9083a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, oVar.a());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public o read(JsonReader jsonReader) throws IOException {
            URL url = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("url".equals(nextName)) {
                        TypeAdapter<URL> typeAdapter = this.f9083a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9084b.getAdapter(URL.class);
                            this.f9083a = typeAdapter;
                        }
                        url = typeAdapter.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new i(url);
        }

        public String toString() {
            return "TypeAdapter(NativeImage)";
        }
    }
}
