.class synthetic Lcom/appsgeyser/multiTabApp/Factory$1;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->values()[Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsgeyser/multiTabApp/Factory$1;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    :try_start_0
    sget-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/appsgeyser/multiTabApp/Factory$1;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    sget-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
