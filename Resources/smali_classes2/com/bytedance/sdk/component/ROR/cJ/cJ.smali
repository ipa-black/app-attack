.class public Lcom/bytedance/sdk/component/ROR/cJ/cJ;
.super Lcom/bytedance/sdk/component/ROR/cJ/ac;
.source "GetExecutor.java"


# static fields
.field public static final Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

.field public static final cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;


# instance fields
.field private Gm:Z

.field private WAv:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

.field private zc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    .line 34
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/ac;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    .line 36
    sget-object p1, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Gm:Z

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->zc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/ROR/cJ;
    .locals 14

    .line 187
    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;-><init>()V

    .line 189
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Gm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    goto/16 :goto_2

    .line 193
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;-><init>()V

    .line 195
    iget-object v4, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    .line 197
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    .line 198
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 200
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 201
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 203
    :cond_1
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    .line 206
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 207
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 208
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 209
    iget-object v7, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->zc:Ljava/util/Map;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_3
    iget-object v4, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->zc:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 214
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 216
    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    move-object v5, v3

    :cond_5
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    goto :goto_1

    .line 220
    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Sf;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 224
    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 227
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/Object;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 229
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 234
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 236
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ROR()Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 238
    :goto_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 239
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->cJ(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 242
    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 247
    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->cJ()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v9, v3

    .line 249
    new-instance v1, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v12

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V
    .locals 8

    .line 87
    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;-><init>()V

    .line 89
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Gm:Z

    if-eqz v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    goto/16 :goto_2

    .line 93
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;-><init>()V

    .line 95
    iget-object v3, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    .line 97
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    .line 98
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 100
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    :cond_1
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    .line 106
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 107
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 108
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    iget-object v6, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->zc:Ljava/util/Map;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->zc:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 116
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;

    goto :goto_1

    .line 120
    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Sf;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 125
    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 128
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/Object;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->fl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->fl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 132
    :cond_7
    iget v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Tgh:I

    if-lez v0, :cond_8

    .line 133
    iget v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Tgh:I

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 136
    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ROR/cJ/cJ$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ$1;-><init>(Lcom/bytedance/sdk/component/ROR/cJ/cJ;Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    .line 138
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/ac;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_9

    .line 178
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    :cond_9
    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->zc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Gm:Z

    return-void
.end method
