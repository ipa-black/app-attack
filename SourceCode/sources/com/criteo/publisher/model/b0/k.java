package com.criteo.publisher.model.b0;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_NativePrivacy.java */
/* loaded from: classes2.dex */
public final class k extends e {
    k(URI uri, URL url, String str) {
        super(uri, url, str);
    }

    /* compiled from: AutoValue_NativePrivacy.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<q> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<URI> f9087a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<URL> f9088b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<String> f9089c;

        /* renamed from: d  reason: collision with root package name */
        private final Gson f9090d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9090d = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, q qVar) throws IOException {
            if (qVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("optoutClickUrl");
            if (qVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<URI> typeAdapter = this.f9087a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9090d.getAdapter(URI.class);
                    this.f9087a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, qVar.a());
            }
            jsonWriter.name("optoutImageUrl");
            if (qVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<URL> typeAdapter2 = this.f9088b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9090d.getAdapter(URL.class);
                    this.f9088b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, qVar.b());
            }
            jsonWriter.name("longLegalText");
            if (qVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f9089c;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9090d.getAdapter(String.class);
                    this.f9089c = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, qVar.c());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public q read(JsonReader jsonReader) throws IOException {
            URI uri = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            URL url = null;
            String str = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    char c2 = 65535;
                    switch (nextName.hashCode()) {
                        case -111772945:
                            if (nextName.equals("optoutImageUrl")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 763886698:
                            if (nextName.equals("longLegalText")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1654281122:
                            if (nextName.equals("optoutClickUrl")) {
                                c2 = 2;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            TypeAdapter<URL> typeAdapter = this.f9088b;
                            if (typeAdapter == null) {
                                typeAdapter = this.f9090d.getAdapter(URL.class);
                                this.f9088b = typeAdapter;
                            }
                            url = typeAdapter.read(jsonReader);
                            continue;
                        case 1:
                            TypeAdapter<String> typeAdapter2 = this.f9089c;
                            if (typeAdapter2 == null) {
                                typeAdapter2 = this.f9090d.getAdapter(String.class);
                                this.f9089c = typeAdapter2;
                            }
                            str = typeAdapter2.read(jsonReader);
                            continue;
                        case 2:
                            TypeAdapter<URI> typeAdapter3 = this.f9087a;
                            if (typeAdapter3 == null) {
                                typeAdapter3 = this.f9090d.getAdapter(URI.class);
                                this.f9087a = typeAdapter3;
                            }
                            uri = typeAdapter3.read(jsonReader);
                            continue;
                        default:
                            jsonReader.skipValue();
                            continue;
                    }
                }
            }
            jsonReader.endObject();
            return new k(uri, url, str);
        }

        public String toString() {
            return "TypeAdapter(NativePrivacy)";
        }
    }
}
