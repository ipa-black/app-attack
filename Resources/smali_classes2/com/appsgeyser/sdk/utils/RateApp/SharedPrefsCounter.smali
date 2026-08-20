.class Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;
.super Ljava/lang/Object;
.source "SharedPrefsCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;
    }
.end annotation


# instance fields
.field private final ENTRIES_KEY:Ljava/lang/String;

.field private final ENTRIES_SHARED_NAME:Ljava/lang/String;

.field private final IS_SHOWN_KEY:Ljava/lang/String;

.field private final MAX_ENTRIES:I

.field private final listener:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "ENTRIES_SHARED_NAME"

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->ENTRIES_SHARED_NAME:Ljava/lang/String;

    .line 10
    const-string v1, "ENTRIES_KEY"

    iput-object v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->ENTRIES_KEY:Ljava/lang/String;

    .line 11
    const-string v1, "IS_SHOWN_KEY"

    iput-object v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->IS_SHOWN_KEY:Ljava/lang/String;

    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->MAX_ENTRIES:I

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    iput-object p2, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->listener:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;

    return-void
.end method

.method private isShown()Z
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "IS_SHOWN_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkNeedToShow()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ENTRIES_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->listener:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;->onComplete()V

    :cond_0
    return-void
.end method

.method public increaseEntries()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "ENTRIES_KEY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 25
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShownFlag(Z)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_SHOWN_KEY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
