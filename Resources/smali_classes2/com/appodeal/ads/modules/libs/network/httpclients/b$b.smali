.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/httpclients/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/ads/modules/libs/network/httpclients/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    const-string v1, "application/x-protobuf"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/modules/libs/network/encoders/b;->a:Lcom/appodeal/ads/modules/libs/network/encoders/b;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/appodeal/ads/modules/libs/network/httpclients/a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
