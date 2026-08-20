.class public Lcom/explorestack/iab/vast/tags/MediaFileTag;
.super Lcom/explorestack/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "delivery"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "codec"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bitrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "minBitrate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "maxBitrate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "scalable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "maintainAspectRatio"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "apiFramework"

    aput-object v2, v0, v1

    sput-object v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    const-string v0, "apiFramework"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "height"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isTextSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidTag()Z
    .locals 3

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
