.class Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;
.super Ljava/lang/Object;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->addVerificationScriptResourceList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

.field final synthetic val$adVerificationsExtensionTagList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    return-void
.end method

.method constructor <init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Ljava/util/List;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    iput-object p2, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;->val$adVerificationsExtensionTagList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 54
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;->val$adVerificationsExtensionTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;

    if-nez v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;->getVerificationTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/VerificationTag;

    .line 59
    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/VerificationTag;->getJavaScriptResourceTag()Lcom/explorestack/iab/vast/tags/JavaScriptResourceTag;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/JavaScriptResourceTag;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 63
    :goto_2
    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/VerificationTag;->getVendor()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/VerificationTag;->getVerificationParameters()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    iget-object v5, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-virtual {v5, v3, v4, v2}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->addVerificationScriptResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
