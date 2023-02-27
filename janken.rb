game_result = ""

until game_result == "you_win" || game_result == "you_lose" 
  
puts "じゃんけん..."
puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

your_hand = gets.chomp.to_i
opponent_hand = rand(3).to_i


janken_value = ["グー","チョキ","パー"]
atchimuite_value = ["上","下","左","右"]


if your_hand == 0 || your_hand == 1 || your_hand == 2
  
  puts "ポン！"
  puts "----------"
  puts "あなた：#{janken_value[your_hand]}を出しました"
  puts "相手：#{janken_value[opponent_hand]}を出しました"
  
  
  if janken_value[your_hand] == janken_value[opponent_hand]
    while janken_value[your_hand] == janken_value[opponent_hand]
    puts "あいこで〜"
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    your_hand = gets.chomp.to_i
    opponent_hand = rand(3).to_i
    puts "ショ！"
    puts "あなた：#{janken_value[your_hand]}を出しました"
    puts "相手：#{janken_value[opponent_hand]}を出しました"
    end 
      
      if janken_value[your_hand] = janken_value[0] && janken_value[opponent_hand] == janken_value[1] || janken_value[your_hand] = janken_value[1] && janken_value[opponent_hand] == janken_value[2] || janken_value[your_hand] = janken_value[2] && janken_value[opponent_hand] == janken_value[0]
        puts "----------"
        puts "あっち向いて〜"
        puts "0(上) 1(下) 2(左) 3(右)"
        your_hand = gets.chomp.to_i
        atchi_opponent_hand = rand(4).to_i
        puts "ホイ！"
        puts "あなた：#{atchimuite_value[your_hand]}"
        puts "相手：#{atchimuite_value[atchi_opponent_hand]}"
        
          if atchimuite_value[your_hand] == atchimuite_value[atchi_opponent_hand]
           puts "あなたの勝利！！おめでとう！！"
           game_result = "you_win"
          end 
    
      elsif janken_value[your_hand] = janken_value[0] && janken_value[opponent_hand] == janken_value[2] || janken_value[your_hand] = janken_value[1] && janken_value[opponent_hand] == janken_value[0] || janken_value[your_hand] = janken_value[2] && janken_value[opponent_hand] == janken_value[1]
        puts "----------"
        puts "あっち向いて〜"
        puts "0(上) 1(下) 2(左) 3(右)"
        your_hand = gets.chomp.to_i
        atchi_opponent_hand = rand(4).to_i
        puts "ホイ！"
        puts "あなた：#{atchimuite_value[your_hand]}"
        puts "相手：#{atchimuite_value[atchi_opponent_hand]}"
        
          if atchimuite_value[your_hand] == atchimuite_value[atchi_opponent_hand]
           puts "残念！負けてしまいました！"
           game_result = "you_lose"
          end 
      end 
    
  elsif janken_value[your_hand] = janken_value[0] && janken_value[opponent_hand] == janken_value[1] || janken_value[your_hand] = janken_value[1] && janken_value[opponent_hand] == janken_value[2] || janken_value[your_hand] = janken_value[2] && janken_value[opponent_hand] == janken_value[0]
    puts "----------"
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    your_hand = gets.chomp.to_i
    atchi_opponent_hand = rand(4).to_i
    puts "ホイ！"
    puts "あなた：#{atchimuite_value[your_hand]}"
    puts "相手：#{atchimuite_value[atchi_opponent_hand]}"
    
      if atchimuite_value[your_hand] == atchimuite_value[atchi_opponent_hand]
       puts "あなたの勝利！！おめでとう！！"
       game_result = "you_win"
      end 
    
  elsif janken_value[your_hand] = janken_value[0] && janken_value[opponent_hand] == janken_value[2] || janken_value[your_hand] = janken_value[1] && janken_value[opponent_hand] == janken_value[0] || janken_value[your_hand] = janken_value[2] && janken_value[opponent_hand] == janken_value[1]
    puts "----------"
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    your_hand = gets.chomp.to_i
    atchi_opponent_hand = rand(4).to_i
    puts "ホイ！"
    puts "あなた：#{atchimuite_value[your_hand]}"
    puts "相手：#{atchimuite_value[atchi_opponent_hand]}"
    
      if atchimuite_value[your_hand] == atchimuite_value[atchi_opponent_hand]
       puts "残念！負けてしまいました！"
       game_result = "you_lose"
      end 
  end   
    
elsif your_hand == 3
  puts "---ゲーム終了---"
  break
end 

end 