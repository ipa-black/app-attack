.class public Lcom/criteo/publisher/h0/b;
.super Ljava/lang/Object;
.source "DfpHeaderBidding.java"

# interfaces
.implements Lcom/criteo/publisher/h0/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/h0/b$b;,
        Lcom/criteo/publisher/h0/b$c;,
        Lcom/criteo/publisher/h0/b$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/n0/c;

.field private final b:Lcom/criteo/publisher/n0/k;

.field private final c:Lcom/criteo/publisher/logging/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/c;Lcom/criteo/publisher/n0/k;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/h0/b;->c:Lcom/criteo/publisher/logging/g;

    .line 83
    iput-object p1, p0, Lcom/criteo/publisher/h0/b;->a:Lcom/criteo/publisher/n0/c;

    .line 84
    iput-object p2, p0, Lcom/criteo/publisher/h0/b;->b:Lcom/criteo/publisher/n0/k;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/s;)Ljava/lang/String;
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/criteo/publisher/h0/b;->a:Lcom/criteo/publisher/n0/c;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/criteo/publisher/h0/b;->b:Lcom/criteo/publisher/n0/k;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/k;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    const/16 v2, 0x300

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v3

    if-lt v3, v2, :cond_1

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result v3

    if-lt v3, v0, :cond_1

    .line 181
    const-string p1, "768x1024"

    return-object p1

    :cond_1
    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v3

    if-lt v3, v0, :cond_2

    .line 183
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result p1

    if-lt p1, v2, :cond_2

    .line 184
    const-string p1, "1024x768"

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 189
    const-string p1, "320x480"

    return-object p1

    .line 191
    :cond_3
    const-string p1, "480x320"

    return-object p1
.end method

.method private a(Lcom/criteo/publisher/h0/b$d;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 141
    invoke-virtual {p2}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/criteo/publisher/n0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p2}, Lcom/criteo/publisher/model/s;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/h0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/criteo/publisher/h0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-static {p1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    return-void

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/h0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    :goto_0
    const-string v0, "crt_displayurl"

    invoke-virtual {p1, v0, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 234
    invoke-static {p2}, Lcom/criteo/publisher/n0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0, p2}, Lcom/criteo/publisher/h0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/criteo/publisher/h0/b$d;Lcom/criteo/publisher/model/s;)V
    .locals 4

    .line 196
    invoke-virtual {p2}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crtn_title"

    invoke-direct {p0, p1, v1, v2}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crtn_desc"

    invoke-direct {p0, p1, v1, v2}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crtn_price"

    invoke-direct {p0, p1, v1, v2}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->b()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crtn_clickurl"

    invoke-direct {p0, p1, v1, v2}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crtn_cta"

    invoke-direct {p0, p1, v1, v2}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->e()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_imageurl"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_advname"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_advdomain"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->f()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_advlogourl"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->e()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_advurl"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->l()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_prurl"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->m()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_primageurl"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_prtext"

    invoke-direct {p0, p1, v0, v1}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->g()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 223
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crtn_pixurl_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "crtn_pixcount"

    invoke-virtual {p1, v0, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/i0/a;
    .locals 1

    .line 95
    sget-object v0, Lcom/criteo/publisher/i0/a;->h:Lcom/criteo/publisher/i0/a;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 241
    invoke-static {p1}, Lcom/criteo/publisher/n0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 245
    :cond_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 246
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 249
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/h0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/criteo/publisher/h0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 251
    invoke-static {p1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/criteo/publisher/n0/a;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 111
    invoke-static {p1}, Lcom/criteo/publisher/h0/b$d;->b(Ljava/lang/Object;)Lcom/criteo/publisher/h0/b$d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crt_cpm"

    invoke-virtual {p1, v1, v0}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/criteo/publisher/h0/b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "crt_size"

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/criteo/publisher/h0/b;->b(Lcom/criteo/publisher/h0/b$d;Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Lcom/criteo/publisher/model/s;)V

    .line 126
    invoke-direct {p0, p3}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/model/s;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/criteo/publisher/h0/b;->a(Lcom/criteo/publisher/h0/b$d;Lcom/criteo/publisher/model/s;)V

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->k()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->p()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 134
    const-string p2, "crt_format"

    const-string p3, "video"

    invoke-virtual {p1, p2, p3}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_4
    iget-object p2, p0, Lcom/criteo/publisher/h0/b;->c:Lcom/criteo/publisher/logging/g;

    invoke-virtual {p0}, Lcom/criteo/publisher/h0/b;->a()Lcom/criteo/publisher/i0/a;

    move-result-object p3

    invoke-virtual {p1}, Lcom/criteo/publisher/h0/b$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/criteo/publisher/h0/a;->a(Lcom/criteo/publisher/i0/a;Ljava/lang/String;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 259
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
