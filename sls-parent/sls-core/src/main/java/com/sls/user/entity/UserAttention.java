package com.sls.user.entity;

public class UserAttention {
    private int userId;
    private int userAttentionId;
    private int newMessage;

    public UserAttention() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getUserAttentionId() {
        return userAttentionId;
    }

    public void setUserAttentionId(int userAttentionId) {
        this.userAttentionId = userAttentionId;
    }

    public int getNewMessage() {
        return newMessage;
    }

    public void setNewMessage(int newMessage) {
        this.newMessage = newMessage;
    }
}
