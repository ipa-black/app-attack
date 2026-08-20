.class public Lcom/explorestack/iab/vast/processor/VastAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/explorestack/iab/vast/processor/VastAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/explorestack/iab/vast/VastRequest;

.field public final b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

.field public final c:Lcom/explorestack/iab/vast/tags/MediaFileTag;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/explorestack/iab/vast/processor/VastAd$a;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/VastAd$a;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/processor/VastAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->k:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->c:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->j:Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->k:Ljava/util/List;

    const-class v1, Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/iab/vast/tags/LinearCreativeTag;Lcom/explorestack/iab/vast/tags/MediaFileTag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->k:Ljava/util/List;

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    iput-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->c:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->a:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->j:Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/iab/vast/tags/CompanionTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getAdParameters()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdVerificationsExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->k:Ljava/util/List;

    return-object v0
.end method

.method public getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->j:Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    return-object v0
.end method

.method public getBanner(Landroid/content/Context;)Lcom/explorestack/iab/vast/tags/CompanionTag;
    .locals 6

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v4

    const/4 v5, -0x1

    if-le v3, v5, :cond_1

    if-le v4, v5, :cond_1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2d8

    if-ne v3, v5, :cond_2

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_2

    return-object v2

    :cond_2
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x140

    if-ne v3, v5, :cond_1

    const/16 v3, 0x32

    if-ne v4, v3, :cond_1

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getVideoClicksTag()Lcom/explorestack/iab/vast/tags/VideoClicksTag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getVideoClicksTag()Lcom/explorestack/iab/vast/tags/VideoClicksTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/VideoClicksTag;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClickTrackingUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompanion(II)Lcom/explorestack/iab/vast/tags/CompanionTag;
    .locals 11

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x258

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-virtual {v4}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v6

    const/4 v7, -0x1

    if-le v5, v7, :cond_1

    if-le v6, v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v9, 0xfa

    if-lt v8, v9, :cond_1

    float-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    invoke-virtual {v4}, Lcom/explorestack/iab/vast/tags/CompanionTag;->hasCreative()Z

    move-result v7

    if-eqz v7, :cond_1

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v1, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v4, v2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/vast/tags/CompanionTag;

    return-object p1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->a(I)V

    return-object v1

    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->a(I)V

    return-object v1
.end method

.method public getErrorUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->c:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    return-object v0
.end method

.method public getSkipOffsetSec()I
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getSkipOffsetSec()I

    move-result v0

    return v0
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

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getWrapperCompanionClickTrackingUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdVerificationsExtensionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->k:Ljava/util/List;

    return-void
.end method

.method public setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->a:Lcom/explorestack/iab/vast/VastRequest;

    return-void
.end method

.method public setWrapperCompanionClickTrackingUrlList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->b:Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->c:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->j:Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->k:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
