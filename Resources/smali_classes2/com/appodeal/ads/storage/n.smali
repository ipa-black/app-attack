.class public final Lcom/appodeal/ads/storage/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/storage/a$a;


# static fields
.field public static final b:Lcom/appodeal/ads/storage/n;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/storage/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/storage/n;

    invoke-direct {v0}, Lcom/appodeal/ads/storage/n;-><init>()V

    sput-object v0, Lcom/appodeal/ads/storage/n;->b:Lcom/appodeal/ads/storage/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/storage/m;->a()Lcom/appodeal/ads/storage/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/storage/n;->a:Lcom/appodeal/ads/storage/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/x4$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/n;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/x4$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
