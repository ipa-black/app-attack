.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/libs/network/httpclients/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/httpclients/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/modules/libs/network/HttpError;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/appodeal/ads/modules/libs/network/HttpError;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "httpError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpError;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/ads/modules/libs/network/HttpError;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpError;

    return-object v0
.end method
