.class final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    .line 2673
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2674
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    .line 2675
    invoke-virtual {p2}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "cleanup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "unregisterReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Context;"

    const-string v1, "unregisterReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "cleanup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method dispatchTimeChanged()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "dispatchTimeChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    invoke-virtual {v5}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v5

    iget-boolean v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eq v5, v6, :cond_0

    iput-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "dispatchTimeChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method getApplyableNightMode()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "getApplyableNightMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    invoke-virtual {v5}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    iget-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "getApplyableNightMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method setup()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "setup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    invoke-direct {v5, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v5, :cond_1

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIME_SET"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIME_TICK"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object v7, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "registerReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Context;"

    const-string v1, "registerReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;"

    const-string v1, "setup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
