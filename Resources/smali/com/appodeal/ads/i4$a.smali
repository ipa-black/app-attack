.class public final Lcom/appodeal/ads/i4$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/ads/g4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/i4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/i4$a;

    invoke-direct {v0}, Lcom/appodeal/ads/i4$a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/i4$a;->a:Lcom/appodeal/ads/i4$a;

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
    .locals 5

    .line 1
    new-instance v0, Lcom/appodeal/ads/g4;

    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 2
    iget-object v1, v1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 3
    invoke-virtual {v1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    .line 5
    invoke-static {}, Lcom/appodeal/ads/services/g;->b()Lcom/appodeal/ads/services/c;

    move-result-object v3

    invoke-static {}, Lcom/appodeal/ads/services/b;->a()Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/g4;-><init>(Landroid/content/Context;Lcom/appodeal/ads/storage/o;Lcom/appodeal/ads/services/c;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;)V

    return-object v0
.end method
