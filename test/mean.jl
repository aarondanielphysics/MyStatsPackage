@testset "unit tests" begin
    @testset "mean" begin
        @test rse_mean(1:10) == 5.5
        
        @test_throws MethodError rse_mean([1:10])
    end
end
#=
@testset "integration test" begin
    
    data = [43, 32, 167, 18, 1, 209]

    # Expected result
    expected_mean_of_max = 353.5

    maximum1 = find_max(data1)
    maximum2 = find_max(data2)

    # Actual result
    actual_mean_of_max = find_mean([maximum1, maximum2])
    
    # Test
    @test actual_mean_of_max == expected_mean_of_max
    
end
=#