.class public Lcom/bytedance/sdk/openadsdk/core/ROR/ac;
.super Ljava/lang/Object;
.source "VastResource.java"


# instance fields
.field protected CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

.field private final Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Qhi:I

.field protected ROR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;",
            ">;"
        }
    .end annotation
.end field

.field protected Sf:Ljava/lang/String;

.field protected Tgh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;",
            ">;"
        }
    .end annotation
.end field

.field private WAv:Ljava/lang/String;

.field protected ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

.field protected cJ:I

.field protected fl:Ljava/lang/String;

.field protected hm:Ljava/lang/String;

.field private zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method public constructor <init>(IILcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Tgh:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ROR:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Qhi:I

    .line 51
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ:I

    .line 52
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    .line 53
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    .line 54
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Tgh:Ljava/util/List;

    .line 56
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ROR:Ljava/util/List;

    .line 57
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Sf:Ljava/lang/String;

    .line 58
    const-string p1, "endcard_click"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->hm:Ljava/lang/String;

    return-void
.end method

.method public static Qhi(IIIILcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;)F
    .locals 0

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float p1, p0, p1

    int-to-float p2, p2

    int-to-float p3, p3

    div-float p3, p2, p3

    sub-float/2addr p1, p3

    .line 97
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p2, p0, p2

    div-float/2addr p2, p0

    .line 98
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p1, p0

    .line 100
    invoke-static {p4, p5}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;)F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    div-float/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;)F
    .locals 3

    .line 110
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac$1;->Qhi:[I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const p0, 0x3f99999a    # 1.2f

    return p0

    .line 112
    :cond_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 114
    :cond_3
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x3f4ccccd    # 0.8f

    return p0

    :cond_4
    return v1
.end method

.method public static cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ROR/ac;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 193
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 194
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creativeType"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "resourceType"

    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v4, "contentUrl"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    const-string v4, "clickThroughUri"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    const-string v4, "clickTrackers"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 199
    const-string v5, "creativeViewTrackers"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 200
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v8, v5

    .line 201
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_1

    .line 202
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_2

    .line 206
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 208
    :cond_2
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;

    .line 209
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    move-result-object v4

    .line 210
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;-><init>(IILcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 2

    .line 132
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac$1;->Qhi:[I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Qhi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></iframe>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    return-object v0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    if-ne v0, v1, :cond_3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    if-ne v0, v1, :cond_4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<script src=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Qhi()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string v1, "width"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Qhi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v1, "height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creativeType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v1, "contentUrl"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v1, "clickThroughUri"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Tgh:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->Qhi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "clickTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ROR:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->Qhi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "creativeViewTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public Qhi(J)V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Tgh:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->WAv:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->hm:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    const/4 v1, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->WAv:Ljava/lang/String;

    return-void
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public ac()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ:I

    return v0
.end method

.method public cJ()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Qhi:I

    return v0
.end method

.method public cJ(J)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ROR:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->WAv:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->cJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fl()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
