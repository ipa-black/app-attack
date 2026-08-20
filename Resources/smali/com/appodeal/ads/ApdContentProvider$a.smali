.class public final Lcom/appodeal/ads/ApdContentProvider$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ApdContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/ApdContentProvider$a$a;
    }
.end annotation


# static fields
.field public static b:Z


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/ApdContentProvider$a;->a:Landroid/content/Context;

    const-string p1, "AppodealPrepare"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/ApdContentProvider$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/ApdContentProvider$a;->b:Z

    return v0
.end method

.method public static final synthetic b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/ApdContentProvider$a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/ApdContentProvider$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/i;->c(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
