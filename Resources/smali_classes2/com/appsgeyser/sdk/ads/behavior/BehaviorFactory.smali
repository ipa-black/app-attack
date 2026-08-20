.class public Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;
.super Ljava/lang/Object;
.source "BehaviorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;
    }
.end annotation


# static fields
.field private static final BANNER_HEIGHT_HEADER:Ljava/lang/String; = "APPAD-BannerHeight"

.field private static final BANNER_WIDTH_HEADER:Ljava/lang/String; = "APPAD-BannerWidth"

.field private static final CLICK_BEHAVIOR_HEADER:Ljava/lang/String; = "APPAD-ClickBehaviour"

.field private static final HIDE_TIMEOUT_HEADER:Ljava/lang/String; = "APPAD-HideTimeout"

.field private static final REFRESH_TIMEOUT_HEADER:Ljava/lang/String; = "APPAD-RefreshTimeout"

.field private static final REMAIN_ON_SCREEN_VALUE:Ljava/lang/String; = "remainOnScreen"


# instance fields
.field private final POSTLOAD_BEHAVIORS:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 27
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "APPAD-HideTimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "APPAD-BannerWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "APPAD-BannerHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "APPAD-ClickBehaviour"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "APPAD-RefreshTimeout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;->POSTLOAD_BEHAVIORS:[Ljava/lang/String;

    return-void
.end method

.method private createBehaviors([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 41
    invoke-direct {p0, p1, v2}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;->isInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;->createVisitor(Ljava/util/Map$Entry;)Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createVisitor(Ljava/util/Map$Entry;)Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v2, "APPAD-HideTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;-><init>(F)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 73
    :cond_0
    const-string v2, "APPAD-BannerWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    new-instance v1, Lcom/appsgeyser/sdk/ads/behavior/bannerBehaviors/BannerWidthBehavior;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/ads/behavior/bannerBehaviors/BannerWidthBehavior;-><init>(I)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v2, "APPAD-BannerHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    new-instance v1, Lcom/appsgeyser/sdk/ads/behavior/bannerBehaviors/BannerHeightBehavior;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/ads/behavior/bannerBehaviors/BannerHeightBehavior;-><init>(I)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v2, "APPAD-ClickBehaviour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    sget-object v1, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 83
    const-string v2, "remainOnScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    sget-object v1, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 85
    :cond_3
    new-instance p1, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderClickBehavior;

    invoke-direct {p1, v1}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderClickBehavior;-><init>(Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;)V

    move-object v0, p1

    goto :goto_1

    .line 89
    :cond_4
    const-string v2, "APPAD-RefreshTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    new-instance v1, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;-><init>(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-object v0
.end method

.method private isInArray([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public createPostloadBehaviors(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;->POSTLOAD_BEHAVIORS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;->createBehaviors([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
