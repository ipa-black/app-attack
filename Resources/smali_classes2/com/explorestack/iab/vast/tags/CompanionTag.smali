.class public Lcom/explorestack/iab/vast/tags/CompanionTag;
.super Lcom/explorestack/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public c:Lcom/explorestack/iab/vast/tags/StaticResourceTag;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "assetWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "assetHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "expandedWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "expandedHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "apiFramework"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "adSlotID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "required"

    aput-object v2, v0, v1

    sput-object v0, Lcom/explorestack/iab/vast/tags/CompanionTag;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Companion"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StaticResource"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/explorestack/iab/vast/tags/StaticResourceTag;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/StaticResourceTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/StaticResourceTag;->isValidTag()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->a(Lcom/explorestack/iab/vast/tags/StaticResourceTag;)V

    goto :goto_0

    :cond_2
    const-string v4, "IFrameResource"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "HTMLResource"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->setHtmlResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "CompanionClickThrough"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "CompanionClickTracking"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v4, "TrackingEvents"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v3, Lcom/explorestack/iab/vast/tags/TrackingEventsTag;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/TrackingEventsTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/TrackingEventsTag;->b()Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    const-string v4, "AdParameters"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->setAdParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/explorestack/iab/vast/tags/StaticResourceTag;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->c:Lcom/explorestack/iab/vast/tags/StaticResourceTag;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->h:Ljava/util/Map;

    return-void
.end method

.method public getAdParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanionClickThrough()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanionClickTrackingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "height"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHtmlForMraid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/explorestack/iab/mraid/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtmlForMraid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->c:Lcom/explorestack/iab/vast/tags/StaticResourceTag;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<script type=\'text/javascript\'>document.write(\'<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; height: 100%%; width: 100%%; object-fit: contain;\" src=\"%s\"/></a>\');</script>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtmlResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIFrameResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticResourceTag()Lcom/explorestack/iab/vast/tags/StaticResourceTag;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->c:Lcom/explorestack/iab/vast/tags/StaticResourceTag;

    return-object v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/tags/CompanionTag;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingEventListMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasCreative()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->c:Lcom/explorestack/iab/vast/tags/StaticResourceTag;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isValidTag()Z
    .locals 2

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->f:Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    return-void
.end method

.method public setAdParameters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->i:Ljava/lang/String;

    return-void
.end method

.method public setHtmlResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    return-void
.end method
