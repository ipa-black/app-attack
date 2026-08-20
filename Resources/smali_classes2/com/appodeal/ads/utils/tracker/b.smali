.class public final Lcom/appodeal/ads/utils/tracker/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/tracker/a;


# static fields
.field public static final b:Lcom/appodeal/ads/utils/tracker/b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/tracker/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/utils/tracker/b;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/tracker/b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/tracker/b;->b:Lcom/appodeal/ads/utils/tracker/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/utils/tracker/c;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/tracker/c;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/utils/tracker/b;->a:Lcom/appodeal/ads/utils/tracker/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/tracker/b;->a:Lcom/appodeal/ads/utils/tracker/c;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/tracker/c;->a(Landroid/app/Application;)V

    return-void
.end method
