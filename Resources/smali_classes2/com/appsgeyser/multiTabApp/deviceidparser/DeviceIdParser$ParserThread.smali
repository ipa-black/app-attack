.class Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;
.super Landroid/os/AsyncTask;
.source "DeviceIdParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/Activity;",
        "Ljava/lang/Void;",
        "Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private _listener:Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;

.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->_listener:Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;

    return-void
.end method

.method private _notifyListener(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->_listener:Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;->onDeviceIdParametersObtained(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/Activity;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->clear()V

    .line 99
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$100(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;Landroid/app/Activity;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->TRUE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->FALSE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->setLimitAdTrackingEnabled(Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;)V

    .line 104
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->setAdvid(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object v0

    sget-object v2, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->UNKNOWN:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    invoke-virtual {v0, v2}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->setLimitAdTrackingEnabled(Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;)V

    .line 107
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->setAdvid(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->getAndroidId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->setAid(Ljava/lang/String;)V

    .line 111
    :goto_1
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, [Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->doInBackground([Landroid/app/Activity;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->_notifyListener(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->onPostExecute(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;)V

    return-void
.end method
