.class public final Lcom/appodeal/ads/z4$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/ads/x4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/z4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/z4$a;

    invoke-direct {v0}, Lcom/appodeal/ads/z4$a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/z4$a;->a:Lcom/appodeal/ads/z4$a;

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
    .locals 12

    .line 1
    new-instance v11, Lcom/appodeal/ads/x4;

    new-instance v1, Lcom/appodeal/ads/networking/usecases/a;

    .line 2
    sget-object v0, Lcom/appodeal/ads/k0;->a:Lcom/appodeal/ads/k0;

    invoke-direct {v1, v0}, Lcom/appodeal/ads/networking/usecases/a;-><init>(Lcom/appodeal/ads/k0;)V

    .line 3
    invoke-static {}, Lcom/appodeal/ads/services/g;->c()Lcom/appodeal/ads/services/c$a;

    move-result-object v2

    new-instance v3, Lcom/appodeal/ads/a3;

    .line 4
    new-instance v0, Lcom/appodeal/ads/l1;

    invoke-direct {v0}, Lcom/appodeal/ads/l1;-><init>()V

    invoke-direct {v3, v0}, Lcom/appodeal/ads/a3;-><init>(Lcom/appodeal/ads/l1;)V

    .line 5
    new-instance v4, Lcom/appodeal/ads/initializing/b;

    invoke-direct {v4}, Lcom/appodeal/ads/initializing/b;-><init>()V

    new-instance v5, Lcom/appodeal/ads/m1;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/appodeal/ads/m1;-><init>(I)V

    sget-object v6, Lcom/appodeal/ads/utils/tracker/b;->b:Lcom/appodeal/ads/utils/tracker/b;

    sget-object v7, Lcom/appodeal/ads/d5;->b:Lcom/appodeal/ads/d5;

    sget-object v8, Lcom/appodeal/ads/c;->b:Lcom/appodeal/ads/c;

    sget-object v9, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    sget-object v10, Lcom/appodeal/ads/storage/n;->b:Lcom/appodeal/ads/storage/n;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/appodeal/ads/x4;-><init>(Lcom/appodeal/ads/networking/usecases/a;Lcom/appodeal/ads/services/c$a;Lcom/appodeal/ads/a3;Lcom/appodeal/ads/initializing/b;Lcom/appodeal/ads/m1;Lcom/appodeal/ads/utils/tracker/b;Lcom/appodeal/ads/d5;Lcom/appodeal/ads/c;Lcom/appodeal/ads/storage/o;Lcom/appodeal/ads/storage/n;)V

    return-object v11
.end method
