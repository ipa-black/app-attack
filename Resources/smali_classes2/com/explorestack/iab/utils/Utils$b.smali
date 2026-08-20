.class public Lcom/explorestack/iab/utils/Utils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/Utils$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/explorestack/iab/utils/Utils$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/explorestack/iab/utils/Utils$b;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/Utils$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/explorestack/iab/utils/Utils$b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/Utils$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
