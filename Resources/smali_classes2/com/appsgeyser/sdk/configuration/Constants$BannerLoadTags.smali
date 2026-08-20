.class public Lcom/appsgeyser/sdk/configuration/Constants$BannerLoadTags;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/configuration/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BannerLoadTags"
.end annotation


# static fields
.field public static final ON_EXIT:Ljava/lang/String; = "on_exit"

.field public static final ON_RESUME:Ljava/lang/String; = "on_resume"

.field public static final ON_START:Ljava/lang/String; = "on_start"

.field public static final ON_TAKE_OFF:Ljava/lang/String; = "on_take_off"

.field public static final ON_TIMEOUT_PASSED:Ljava/lang/String; = "on_timeout"


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/configuration/Constants;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/configuration/Constants;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/Constants$BannerLoadTags;->this$0:Lcom/appsgeyser/sdk/configuration/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
