.class public Lcom/explorestack/iab/vast/tags/CreativeTag;
.super Lcom/explorestack/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public c:Lcom/explorestack/iab/vast/tags/CreativeContentTag;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/explorestack/iab/vast/tags/CreativeTag;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Creative"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Linear"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/CreativeTag;->c:Lcom/explorestack/iab/vast/tags/CreativeContentTag;

    goto :goto_0

    :cond_1
    const-string v4, "CompanionAds"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCreativeContentTag()Lcom/explorestack/iab/vast/tags/CreativeContentTag;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CreativeTag;->c:Lcom/explorestack/iab/vast/tags/CreativeContentTag;

    return-object v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/tags/CreativeTag;->d:[Ljava/lang/String;

    return-object v0
.end method
