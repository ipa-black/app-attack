package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.n;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* compiled from: AutoValue_NativeAssets.java */
/* loaded from: classes2.dex */
final class h extends b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(List<r> list, m mVar, q qVar, List<p> list2) {
        super(list, mVar, qVar, list2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_NativeAssets.java */
    /* loaded from: classes2.dex */
    public static final class a extends TypeAdapter<n> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<List<r>> f9078a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<m> f9079b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<q> f9080c;

        /* renamed from: d  reason: collision with root package name */
        private volatile TypeAdapter<List<p>> f9081d;

        /* renamed from: e  reason: collision with root package name */
        private final Gson f9082e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9082e = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, n nVar) throws IOException {
            if (nVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("products");
            if (nVar.h() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<List<r>> typeAdapter = this.f9078a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9082e.getAdapter(TypeToken.getParameterized(List.class, r.class));
                    this.f9078a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, nVar.h());
            }
            jsonWriter.name("advertiser");
            if (nVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<m> typeAdapter2 = this.f9079b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9082e.getAdapter(m.class);
                    this.f9079b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, nVar.b());
            }
            jsonWriter.name("privacy");
            if (nVar.j() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<q> typeAdapter3 = this.f9080c;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9082e.getAdapter(q.class);
                    this.f9080c = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, nVar.j());
            }
            jsonWriter.name("impressionPixels");
            if (nVar.i() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<List<p>> typeAdapter4 = this.f9081d;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.f9082e.getAdapter(TypeToken.getParameterized(List.class, p.class));
                    this.f9081d = typeAdapter4;
                }
                typeAdapter4.write(jsonWriter, nVar.i());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public n read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            n.a a2 = n.a();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("products")) {
                        TypeAdapter<List<r>> typeAdapter = this.f9078a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f9082e.getAdapter(TypeToken.getParameterized(List.class, r.class));
                            this.f9078a = typeAdapter;
                        }
                        a2.a(typeAdapter.read(jsonReader));
                    } else if (nextName.equals("impressionPixels")) {
                        TypeAdapter<List<p>> typeAdapter2 = this.f9081d;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f9082e.getAdapter(TypeToken.getParameterized(List.class, p.class));
                            this.f9081d = typeAdapter2;
                        }
                        a2.b(typeAdapter2.read(jsonReader));
                    } else if ("advertiser".equals(nextName)) {
                        TypeAdapter<m> typeAdapter3 = this.f9079b;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f9082e.getAdapter(m.class);
                            this.f9079b = typeAdapter3;
                        }
                        a2.a(typeAdapter3.read(jsonReader));
                    } else if ("privacy".equals(nextName)) {
                        TypeAdapter<q> typeAdapter4 = this.f9080c;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.f9082e.getAdapter(q.class);
                            this.f9080c = typeAdapter4;
                        }
                        a2.a(typeAdapter4.read(jsonReader));
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return a2.b();
        }

        public String toString() {
            return "TypeAdapter(NativeAssets)";
        }
    }
}
