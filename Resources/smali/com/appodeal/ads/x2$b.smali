.class public final Lcom/appodeal/ads/x2$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/ads/networking/cache/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/x2$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/x2$b;

    invoke-direct {v0}, Lcom/appodeal/ads/x2$b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/x2$b;->a:Lcom/appodeal/ads/x2$b;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/appodeal/ads/networking/cache/c;

    sget-object v1, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->b()Lcom/appodeal/ads/storage/a;

    move-result-object v1

    .line 3
    const-string v2, "init_response"

    invoke-direct {v0, v2, v1}, Lcom/appodeal/ads/networking/cache/c;-><init>(Ljava/lang/String;Lcom/appodeal/ads/storage/a;)V

    return-object v0
.end method
