.class public Lcom/explorestack/iab/vast/tags/StaticResourceTag;
.super Lcom/explorestack/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "creativeType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/explorestack/iab/vast/tags/StaticResourceTag;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getSupportedAttributes()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/tags/StaticResourceTag;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public isTextSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidTag()Z
    .locals 2

    const-string v0, "creativeType"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/.*(?i)(gif|jpeg|jpg|bmp|png)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
