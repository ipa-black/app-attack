.class public final Lcom/appodeal/ads/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/o4$a;,
        Lcom/appodeal/ads/o4$b;,
        Lcom/appodeal/ads/o4$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/p4;

.field public static b:I = 0x15f90

.field public static c:Lcom/appodeal/ads/o4$c;

.field public static d:Lcom/appodeal/ads/o4$b;

.field public static e:Lcom/appodeal/ads/p5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/p5<",
            "Lcom/appodeal/ads/n4;",
            "Lcom/appodeal/ads/m4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/p4;

    invoke-direct {v0}, Lcom/appodeal/ads/p4;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o4;->a:Lcom/appodeal/ads/p4;

    return-void
.end method

.method public static a()Lcom/appodeal/ads/o4$b;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/o4;->d:Lcom/appodeal/ads/o4$b;

    if-nez v0, :cond_1

    const-class v1, Lcom/appodeal/ads/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/o4;->d:Lcom/appodeal/ads/o4$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/o4$b;

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appodeal/ads/o4$b;-><init>(Lcom/appodeal/ads/o4$c;)V

    sput-object v0, Lcom/appodeal/ads/o4;->d:Lcom/appodeal/ads/o4$b;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/appodeal/ads/o4;->e:Lcom/appodeal/ads/p5;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/p5;

    invoke-direct {v0}, Lcom/appodeal/ads/p5;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o4;->e:Lcom/appodeal/ads/p5;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/o4;->e:Lcom/appodeal/ads/p5;

    .line 2
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/appodeal/ads/k1;->b(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/appodeal/ads/o4$c;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/o4;->c:Lcom/appodeal/ads/o4$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/o4$c;

    invoke-direct {v0}, Lcom/appodeal/ads/o4$c;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o4;->c:Lcom/appodeal/ads/o4$c;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/o4;->c:Lcom/appodeal/ads/o4$c;

    return-object v0
.end method

.method public static c()D
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/segments/g;->c()D

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/segments/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
