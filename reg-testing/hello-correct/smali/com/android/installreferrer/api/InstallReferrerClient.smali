.class public abstract Lcom/android/installreferrer/api/InstallReferrerClient;
.super Ljava/lang/Object;
.source "InstallReferrerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/InstallReferrerClient$Builder;,
        Lcom/android/installreferrer/api/InstallReferrerClient$InstallReferrerResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/android/installreferrer/api/InstallReferrerClient;"

    const-string v1, "newBuilder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;-><init>(Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient$1;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/android/installreferrer/api/InstallReferrerClient;"

    const-string v1, "newBuilder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public abstract endConnection()V
.end method

.method public abstract getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isReady()Z
.end method

.method public abstract startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
.end method
